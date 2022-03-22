#### 前言

本demo是使用的开源项目faad2将aac数据解码成pcm数据。



### 1、编译使用

**faad2的编译：**(faad2下载地址：[https://sourceforge.net/projects/faac/files/faad2-src/faad2-2.8.0/](https://sourceforge.net/projects/faac/files/faad2-src/faad2-2.8.0/))

```bash
tar xzf faad2-2.8.8.tar.gz
cd faad2-2.8.8/
./configure --prefix=$PWD/_install
make
make install
```

**demo的编译使用：**

```bash
$ make clean && make
$
$ ./aac2pcm 
Usage:
    ./aac2pcm <in aac file> <out pcm file>
Examples:
    ./aac2pcm ./audio/test1_44100_stereo.aac  out1_44100_16bit_stereo.pcm
    ./aac2pcm ./audio/test2_8000_mono.aac     out2_16000_16bit_stereo.pcm  # output [samplerate] and [channels] will be auto configured.
```



### 2、参考文章

 - [用faad解码AAC(ADTS封装)\_gavinr的博客-CSDN博客\_faad解码aac](https://blog.csdn.net/gavinr/article/details/6959198)



### 附录（demo目录架构）

```bash
$ tree
.
├── aac_adts.c
├── aac_adts.h
├── audio
│   ├── out1_44100_16bit_stereo.pcm
│   ├── out2_16000_16bit_stereo.pcm
│   ├── test1_44100_stereo.aac
│   └── test2_8000_mono.aac
├── docs
│   └── 用faad解码AAC(ADTS封装)_gavinr的博客-CSDN博客_faad解码aac.mhtml
├── include
│   ├── faad.h
│   └── neaacdec.h
├── lib
│   ├── libfaad.a
│   └── libfaad_drm.a
├── main.c
├── Makefile
└── README.md
```

