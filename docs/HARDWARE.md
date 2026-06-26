# Hardware Notes

## Server

- Dell PowerEdge T420
- Dual Intel Xeon E5-2420 CPUs
- 12 physical cores total
- 24 threads total
- DDR3 ECC memory

## Memory

Original expected memory was 96 GB using a mix of 16 GB and 8 GB DDR3 ECC DIMMs.

Known memory issue:

- DIMM slot/channel A3 appears unreliable.
- A3 failed with multiple known-good DIMMs.
- The same DIMMs worked in other slots.

Current working rule:

- Leave A3 empty.
- Do not continue memory troubleshooting unless stability issues return.

## Storage

Current known storage:

- Ubuntu Server installed on a direct-connected SATA SSD.
- A second SSD was used temporarily for Windows Server firmware updates.
- Original HDDs and an unknown RAID card were removed during troubleshooting.

Current recommendation:

- Keep Ubuntu on the direct-connected SSD while GPU/PSU testing continues.
- Treat future RAID/front-bay storage as a separate project.

## GPU status

### Current working GPU

- NVIDIA GeForce GT 1030
- Slot-powered
- Detected by Ubuntu
- Works with NVIDIA driver
- Works with Docker CUDA visibility
- Useful for light model testing and validation

### Future GPU target

- GTX 1060 6 GB cards were tested physically.
- System faulted when auxiliary PCIe power was connected.
- The behavior occurred across more than one GTX 1060 card.
- The issue is likely related to PSU/cable/GPU power path rather than the GPU alone.

Current rule:

- Do not retest GTX 1060 auxiliary PCIe power until the correct Dell PSU and GPU power cable path is confirmed.

## PSU status

- One original PSU was identified as faulty.
- System currently runs cleanly on one known-good PSU.
- Matched higher-wattage Dell PSUs are planned before powered GPU testing.

## RAID/storage expansion

Preferred future RAID controller families for a T420-era storage build:

- Dell PERC H310 Adapter
- Dell PERC H710 Adapter
- Dell PERC H710P Adapter

Avoid unknown/newer PERC cards unless exact compatibility is confirmed.

See [`RAID_STORAGE_PLAN.md`](RAID_STORAGE_PLAN.md) for details.


---

## 1100W PSU compatibility test update

A pair of Dell 1100W EPP PSUs was tested and rejected by the T420 during iDRAC/power initialization.

Failed units:

- `L1100E-S1 / DP/N 0CMPGM / Lite-On`
- `D1100E-S0 / DP/N 0Y26KX / Delta`

Control result: the known-good 750W PSU still boots the system normally.

SEL result:

```text
Power Supply Status | Config Error: Vendor Mismatch | Asserted
```

Conclusion: these exact 1100W variants should not be used for this T420 GPU-power upgrade. Replace them with a matched pair explicitly sold as PowerEdge T420/T620-compatible.

See [`PSU_TESTING.md`](PSU_TESTING.md).
