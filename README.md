

### 引言
解决Pixelbook2017安装fydeOS后驱动问题

在以下环境测试：

FydeOS18.0-SP1(Debian GNU/Linux 12 (bookworm) x86_64).[FydeOS](https://fydeos.com/)


### 声卡
将pixelbook-alsa下的文件按照目录顺序依次放到fydeos对应的目录下

```
  /lib/firmware/9d71-GOOGLE-EVEMAX-0-tplg.bin

  /lib/firmware/dsp_lib_dsm_core_spt_release.bin

  /lib/firmware/intel/dsp_fw_C75061F3-F2B2-4DCC-8F9F-82ABB4131E66.bin

  /opt/google/dsm/dsmparam.bin

  /usr/share/alsa/ucm2/Intel/kbl-r5514-5663-/Hifi.conf

  /usr/share/alsa/ucm2/Intel/kbl-r5514-5663-/kbl-r5514-5663-.conf

  /usr/share/alsa/ucm2/conf.d/kbl-r5514-5663-/Hifi.conf

  /usr/share/alsa/ucm2/conf.d/kbl-r5514-5663-/kbl-r5514-5663-.conf

```
### 键盘


