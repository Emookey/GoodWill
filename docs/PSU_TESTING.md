# PSU Testing Notes

This document tracks power-supply testing for the Dell PowerEdge T420 AI workspace lab.

## Current PSU status

The system currently boots normally with the known-good 750W PSU. The original bad PSU remains removed.

The first attempted 1100W upgrade pair failed compatibility testing and should not be used for GPU power testing.

## 1100W PSU compatibility test

### Purpose

The purpose of this test was to validate 1100W PSU compatibility before installing the Dell GPU/PCIe power cable and before retesting the GTX 1060 with auxiliary PCIe power.

### Tested units

| PSU | Dell DP/N | Manufacturer | Label input | Result |
|---|---:|---|---|---|
| `L1100E-S1` | `0CMPGM` | Lite-On | `100-240V AC` | Failed |
| `D1100E-S0` | `0Y26KX` | Delta | `100-240V AC` | Failed |

Both units physically fit and showed valid AC-input ratings for normal U.S. power. The failure was not caused by a 200-240V-only input limitation.

### Variables excluded

The following components were not involved during this test:

- GTX 1060 auxiliary PCIe power
- Dell GPU/PCIe power cable
- RAID card
- Future drive-bay / storage changes

The goal was to keep the test as isolated as possible.

### Control result

The known-good 750W PSU still boots the T420 normally. This indicates that the iDRAC, motherboard, PSU bays, and simplified hardware configuration are still functional.

### Observed failure behavior

Both 1100W units showed the same behavior in both PSU bays:

1. PSU LED remained solid green during early startup / memory configuration.
2. System reached `Initializing iDRAC...`.
3. After roughly 10 seconds, the PSU LED flashed green.
4. System shut down.

### Log evidence

Useful commands:

```bash
sudo ipmitool sdr elist | egrep -i "ps|pwr|power|volt|curr|supply"
sudo ipmitool sel elist | tail -80
```

Important SEL finding:

```text
Power Supply Status | Config Error: Vendor Mismatch | Asserted
```

Additional notes:

- `PS1 PG Fail` and `PS2 PG Fail` showed `State Deasserted` after returning to the known-good PSU.
- Current/voltage readings showed the known-good PSU path was active again.
- CMOS battery entries appeared in the log but are not considered the cause of this PSU compatibility failure.

### Conclusion

The tested 1100W PSUs are electrically plausible and physically compatible, but they are not accepted by this specific T420/iDRAC/power-distribution combination.

Classification:

```text
Electrically plausible
Physically fitting
Rejected during iDRAC / power-supply inventory
Failed with PSU vendor mismatch
Not safe to use for GPU upgrade testing
```

### Models to avoid for this server

Avoid reordering these exact units for this T420:

- `L1100E-S1 / DP/N 0CMPGM`
- `D1100E-S0 / DP/N 0Y26KX`

### Next PSU purchase guidance

For the next attempt, look for:

- A matched pair explicitly sold as compatible with Dell PowerEdge T420/T620 systems
- Same Dell DP/N
- Same model
- Same manufacturer
- Same wattage
- Same efficiency class
- Input label supporting `100-240V AC`

Suggested seller question:

```text
Can you confirm these exact 1100W PSUs are compatible with a Dell PowerEdge T420 and will not trigger a PSU vendor mismatch/configuration error?
```

### Current GPU power retest status

Do not retest GTX 1060 auxiliary PCIe power until:

1. A compatible replacement 1100W PSU pair is installed.
2. Each PSU boots the server by itself.
3. Both PSUs boot the server together.
4. iDRAC/Ubuntu remain stable.
5. The Dell GPU power cable is installed after PSU validation.

