# 脚本集合

## 准备

### 生成主机的 sshkey 并且推送到主机

```
ssh-keygen -m PEM
ssh-copy-id user@host
```

### 编辑 inventory

根目录下维护一个`inventory`的主机资产文件

## centos_install_workspace.yml

在`linux`应该能通用

### 安装软件

- `zsh`
- `git`
- `wget`
- `htop`
- `vim`

## 设置

安装`ohmyzsh`，以及如下插件

- git
- z
- extract
- history
- colored-man-pages
- safe-paste
- command-not-found
- vi-mode
- docker
- docker-compose
- zsh-autosuggestions
- zsh-syntax-highlighting
