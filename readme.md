## 构建镜像

依赖工具链 gcc-arm-none-eabi-9-2019-q4-major.zip，需要将其放在根目录

```bash
docker build -t hacper/preboot_builder:latest .
```

## 使用

创建容器，/e/workspace/preboot/preboot_boot2 只是示例，需要修改为自己电脑上的 preboot 源码路径。

preboot_boot2目录下的 CRANEL CRANEM 分别放置对应的 preboot 源码，将 preboot_boot2 目录挂载到容器中。

```bash
docker pull hacper/preboot_builder

docker run -v /e/workspace/preboot/preboot_boot2:/preboot/src -it hacper/preboot_builder
```

执行编译脚本编译preboot

```bash
 ./build_CRANEL.sh
 ./build_CRANEM.sh
```

生成的镜像分别在路径：

```powershell
preboot_boot2\CRANEL\apps\preboot\bin\crane\preboot.bin

preboot_boot2\CRANEM\apps\preboot\bin\cortexr-arom-crane\preboot.bin
```

