# Setup environment configuration
Run
1. avell_host_configuration.ps1 on Powershell as Administrator
2. avell_wsl_ubuntu_configuration.sh on WSL Ubuntu

# WSL

## Commands
```
wsl -l -v                                                   # list wsl
wsl --shutdown                                              # stop wsl
wsl --export WSL_NAME C:\Users\edtroleis\Desktop\wsl.tar    # backup wsl
wsl --import WSL_NAME C:\Users\edtroleis\Desktop\wsl.tar    # restore wsl
```

## [WSL config file](.wslconfig)
```
# On powershell
notepad "$env:USERPROFILE/.wslconfig"

# On WSL
vim /mnt/c/Users/edtro/.wslconfig
```

## [WSL config file on Linux](wsl.conf)
```
# To Linux does not overwrite /etc/hosts on WSL
# Into Linux (Ubuntu)
vim /etc/wsl.conf
```

[More details about wsl config](https://docs.microsoft.com/en-us/windows/wsl/wsl-config#wslconfig)

# Links
- [Quick start](https://github.com/codeedu/wsl2-docker-quickstart)