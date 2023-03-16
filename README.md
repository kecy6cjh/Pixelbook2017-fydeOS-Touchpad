Works On Ubuntu-22.04.2-LTS-x86_64

Installing ALSA drivers and configuration files for the Pixelbook (Eve) Under Linux:

Copy the files to the respective locations according to the paths listed below:

```
  /lib/firmware/9d71-GOOGLE-EVEMAX-0-tplg.bin

  /lib/firmware/dsp_lib_dsm_core_spt_release.bin

  /lib/firmware/intel/dsp_fw_C75061F3-F2B2-4DCC-8F9F-82ABB4131E66.bin

  /opt/google/dsm/dsmparam.bin

  /usr/share/alsa/ucm2/Intel/kbl-r5514-5663-/Hifi.conf

  /usr/share/alsa/ucm2/Intel/kbl-r5514-5663-/kbl-r5514-5663-.conf

  /usr/share/alsa/ucm2/conf.d/kbl-r5514-5663-/Hifi.conf (or create a symbolic link to the file in the intel folder)

  /usr/share/alsa/ucm2/conf.d/kbl-r5514-5663-/kbl-r5514-5663-.conf (or create a symbolic link to the file in the intel folder)

  /usr/lib/udev/hwdb.d/61-eve-sensor.hwdb

  /usr/lib/udev/hwdb.d/61-eve-keyboard.hwdb
```

Or just replace the above operation with run script
```
  bash run-ansible.sh
```
After installation of the files run

```
  systemd-hwdb update
```
if failed,try
```
  sudo systemd-hwdb update
```

This will update th hwdb to allow the accelerometer and keyboard to work correctly



The audio drivers WILL NOT work with pipewire. They will give sound but its mostly slow playing and covered by white noise (you can try it if you like to see what im talking about) For this reason we must replace pipewire with pulseaudio. Of note, HDMI/DP Out is not working on Ubuntu 22.10 or later nor is it working under fedora systems but it does work with Ubuntu 22.04 and Linux Mint. (Those OSes have pulseaudio natively installed and maybe their configurations allow for HDMI/DP out to work but at this point I have not figured out how to get it working on newer versions where pulseaudio needs installation. I have also tried it under Arch. HDMI/DP does not work even with Pulseaudio natively installed.


TO INSTALL PULSEAUDIO ON UBUNTU 22.10 OR LATER (May also be applicable to Pop!OS)

Run the following commands:

```
  sudo apt install pipewire-media-session (this will remove wireplumber)

  sudo apt install pulseaudio

  sudo apt remove pipewire-pulse (this will stop pipewire from attempting to run its daemon and give way to pulseaudio)
  
  sudo apt remove pipewire-alsa
```
