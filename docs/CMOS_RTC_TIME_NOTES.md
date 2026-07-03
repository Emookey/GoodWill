# CMOS / RTC / iDRAC SEL Time Notes

## Problem

The server may display correct Ubuntu time while iDRAC/BMC SEL logs still show an old default date.

This can happen because Linux system time, the hardware RTC, and iDRAC/BMC SEL time are not always the same clock.

## Symptoms

- `date` shows the correct time.
- `hwclock --show` may be correct after syncing.
- `ipmitool sel time get` may show an incorrect date.
- `ipmitool sdr elist | grep -i battery` may report `CMOS Battery | Failed`.

## Battery orientation

Use a normal CR2032 3V coin-cell battery.

Install with:

```text
+ / labeled side facing up/out
blank negative side facing down toward the motherboard
```

Do not move nearby password or NVRAM reset jumpers unless intentionally clearing settings.

## Time correction commands

```bash
sudo timedatectl set-timezone America/New_York
sudo timedatectl set-ntp true
sudo systemctl enable --now systemd-timesyncd

timedatectl
date
sudo hwclock --systohc
sudo hwclock --show
sudo ipmitool sel time set now
sudo ipmitool sel time get
sudo ipmitool sdr elist | grep -i battery
```

## Validation after replacement

After replacing the CR2032:

1. Set Linux time, hardware clock, and SEL time.
2. Shut down fully.
3. Unplug AC power.
4. Wait several minutes.
5. Boot.
6. Recheck:

```bash
date
sudo hwclock --show
sudo ipmitool sel time get
sudo ipmitool sdr elist | grep -i battery
```

If the battery warning remains with a known-good battery, suspect the battery holder/contact or motherboard RTC/BMC retention path.
