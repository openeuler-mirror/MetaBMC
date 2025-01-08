# meta-aspeed 
#### 使用说明

Openeuler Aspeed 2600 OBMC 构建。
环境搭建参考Openeuler官方使用指南：  https://pages.openeuler.openatom.cn/embedded/docs/build/html/master/getting_started/index.html  

创建构建目录  
```
oebuild generate -p ast2600 [-d ast2600]
```

构建openbmc镜像  
```
bitbake openeuler-image-obmc
```

qemu仿真（自带的qemu版本太低，需要自行安装高版本的quemu-system-arm）  
```
qemu-system-arm -M ast2600-evb -m 1024M -drive file=openeuler-image-obmc-ast2600.static.mtd,format=raw,if=mtd -nographic -net nic -net user,hostfwd=:127.0.0.1:2222-:22,hostfwd=:127.0.0.1:2443-:443,hostfwd=udp:127.0.0.1:2623-:623,hostname=qemu
```
访问https://127.0.0.1:2443查看web，ssh使用2222端口