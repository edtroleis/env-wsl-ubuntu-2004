# WSL

## Commands
```
wsl -l -v                                                   # list wsl
wsl --shutdown                                              # stop wsl
wsl --export WSL_NAME C:\Users\edtroleis\Desktop\wsl.tar    # backup wsl
wsl --import WSL_NAME C:\Users\edtroleis\Desktop\wsl.tar    # restore wsl
```

## WSL config
```
vim /mnt/c/Users/edtro/.wslconfig

---
[wsl2]
memory=3GB   # Limits VM memory in WSL 2 up to 3GB
processors=2 # Makes the WSL 2 VM use two virtual processors
---
```