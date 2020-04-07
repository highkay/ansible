# 脚本集合

<!-- TOC -->

- [脚本集合](#%e8%84%9a%e6%9c%ac%e9%9b%86%e5%90%88)
  - [准备](#%e5%87%86%e5%a4%87)
    - [生成主机的 sshkey 并且推送到主机](#%e7%94%9f%e6%88%90%e4%b8%bb%e6%9c%ba%e7%9a%84-sshkey-%e5%b9%b6%e4%b8%94%e6%8e%a8%e9%80%81%e5%88%b0%e4%b8%bb%e6%9c%ba)
    - [编辑 inventory](#%e7%bc%96%e8%be%91-inventory)
  - [make init](#make-init)
    - [安装](#%e5%ae%89%e8%a3%85)
    - [设置](#%e8%ae%be%e7%bd%ae)
  - [make docker](#make-docker)
    - [安装](#%e5%ae%89%e8%a3%85-1)
    - [设置](#%e8%ae%be%e7%bd%ae-1)
  - [make k8s](#make-k8s)
    - [安装](#%e5%ae%89%e8%a3%85-2)

<!-- /TOC -->

## 准备

### 生成主机的 sshkey 并且推送到主机

```
ssh-keygen -m PEM
ssh-copy-id user@host
```

### 编辑 inventory

根目录下维护一个`inventory`的主机资产文件

## make init

`centos_install_workspace.yml`，在`linux`应该能通用

### 安装

- `zsh`
- `git`
- `wget`
- `htop`
- `vim`

### 设置

安装`ohmyzsh`，以及如下插件

- [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git/)
- [z](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/z/)
- [extract](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/extract/)
- [history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history/)
- [colored-man-pages](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages/)
- [safe-paste](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/safe-paste/)
- [command-not-found](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found/)
- [vi-mode](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vi-mode/)
- [docker](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker/)
- [docker-compose](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose/)
- zsh-autosuggestions
- zsh-syntax-highlighting

## make docker

### 安装

- 通过`aliyun`的repo安装最新版本的`docker-ce`
- 通过官方下载`指定版本`的`docker-compose`

### 设置

设置`docker`的mirror为azure

## make k8s

### 安装

通过`rancher`来安装k8s集群
