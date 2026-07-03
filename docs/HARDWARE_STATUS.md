# Hardware Status

## Current functional hardware

- Dell PowerEdge T420
- Dual Xeon E5-2420 CPUs
- DDR3 ECC memory
- Ubuntu boot SSD connected directly to motherboard SATA
- One known-good 750W PSU
- Dell-style GPU power cable
- NVIDIA GTX 1060 6GB as current active GPU

## Known hardware issues

- One original PSU was faulty and removed.
- Tested 1100W PSU variants produced vendor mismatch and were returned/refunded.
- One DIMM slot/channel has shown repeated failures and should remain unused.
- CMOS battery currently reports failed and should be replaced.
- Future RAID/front-bay storage expansion should wait until the current GPU, vision, and clock issues are stable.

## Current recommendation

Continue software and model testing with the GTX 1060 6GB. Do not pursue larger data-center GPUs or storage redesigns until the current lab workflow is better proven.
