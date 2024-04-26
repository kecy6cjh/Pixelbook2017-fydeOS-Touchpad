# version:0.0.1
# 执行本脚本前，请先获取root权限并挂载目录为可读写，否则脚本将无法执行成功

# 获取root权限
# sudo -i

# 挂载目录为可读写
# mount -o remount rw /

# 拷贝文件到指定目录

cp pixelbook-alsa/lib/firmware/dsp_lib_dsm_core_spt_release.bin /lib/firmware/dsp_lib_dsm_core_spt_release.bin
cp pixelbook-alsa/lib/firmware/9d71-GOOGLE-EVEMAX-0-tplg.bin /lib/firmware/9d71-GOOGLE-EVEMAX-0-tplg.bin
cp pixelbook-alsa/lib/firmware/intel/dsp_fw_C75061F3-F2B2-4DCC-8F9F-82ABB4131E66.bin /lib/firmware/intel/dsp_fw_C75061F3-F2B2-4DCC-8F9F-82ABB4131E66.bin

cp pixelbook-alsa/opt/google/dsm/dsmparam.bin  /opt/google/dsm/dsmparam.bin 


cp -r pixelbook-alsa/usr/share/alsa/ucm2/conf.d/   /usr/share/alsa/ucm2/conf.d/
cp -r pixelbook-alsa/usr/share/alsa/ucm2/Intel/   /usr/share/alsa/ucm2/Intel/
