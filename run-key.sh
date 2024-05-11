# version:0.0.1
# 执行本脚本前，请先获取root权限并挂载目录为可读写，否则脚本将无法执行成功

# 获取root权限
# sudo -i

# 挂载目录为可读写
# mount -o remount rw /

# 拷贝文件到指定目录

cp pixelbook-keyboard/61-eve-keyboard.hwdb  /etc/udev/hwdb.d/61-eve-keyboard.hwdb

udevadm hwdb --update && udevadm trigger

