

### 介绍
解决Pixelbook2017安装fydeOS后驱动问题

在以下环境测试：

FydeOS18.0-SP1.[FydeOS](https://fydeos.com/)

### 准备工作
1. 开启开发者模式.[开发者模式指南](https://fydeos.com/question/enable-developer-mode/)
2. 禁用根文件系统验证. [禁用根文件系统验证](https://fydeos.com/docs/knowledge-base/getting-started/disable-rootfs-verification)
3. 重启后将目录挂载为可读写：
    - 同时按下 `Control + Alt + T`键
    - 输入 `shell` 回车
    - 输入 `sudo -i` 以获取管理员权限
    ```
    mount -o remount rw /
    ```

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


