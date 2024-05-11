

### 介绍
解决Pixelbook2017安装fydeOS后驱动问题。

Fork from [PixelbookLinux](https://github.com/lyncolnmd/PixelbookLinux)，所有文件均来自该仓库。

在以下环境测试：

FydeOS18.0-SP1.[FydeOS](https://fydeos.com/)

### 准备工作
1. 开启开发者模式.[开发者模式指南](https://fydeos.com/question/enable-developer-mode/)
2. 禁用根文件系统验证. [禁用根文件系统验证](https://fydeos.com/docs/knowledge-base/getting-started/disable-rootfs-verification)
3. 重启后将目录挂载为可读写：
    - 同时按下 `Control + Alt + T`键
    - 输入 `shell` 回车
    - 输入 `sudo -i` 以获取root权限
    - 挂载目录为可读写:
      ```
      mount -o remount rw /
      ```
4. 拉取文件

    ```
    git clone https://github.com/unclemcz/Pixelbook2017-fydeOS.git
    ```
### 声卡
将文件夹pixelbook-alsa下的文件按照目录顺序依次放到fydeos对应的目录下，然后重启。

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
或者执行以下命令：

执行本脚本前，请先获取root权限并挂载目录为可读写，否则脚本将无法执行成功
```
bash run-alsa.sh
```
**如果是在linux子系统拉取文件的话，需要将拉取的文件夹从linux子系统路径挪到fydeos系统路径下，再执行以上命令。** 

最后重启系统。

如果不知道如何执行脚本，请参考前面的做法，直接拷贝文件到对应目录下。

### 其他问题

#### 键盘
参考:https://wiki.gentoo.org/wiki/Google_Pixelbook_(2017)

将文件夹pixelbook-keyboard下的文件按照目录顺序放到fydeos对应的目录下，更新按键映射,然后重启。
```
/etc/udev/hwdb.d/61-eve-keyboard.hwdb
```
更新映射
```
udevadm hwdb --update && udevadm trigger
```
重启解决。

或者执行以下命令：

执行本脚本前，请先获取root权限并挂载目录为可读写，否则脚本将无法执行成功
```
bash run-key.sh
```
**如果是在linux子系统拉取文件的话，需要将拉取的文件夹从linux子系统路径挪到fydeos系统路径下，再执行以上命令。** 

最后重启系统。

#### 触摸板
触摸板会飘，飘的厉害。


