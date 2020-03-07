# Window Setup
* [Home](./README.md)
* Windows Setup
  * [WSL](#WSL)
  * [Enterprise Proxy](#Enterprise-Proxy)

For windows setup will be using the windows subsystem for Linux as some future projects will only work on Linux kernel. 

## WSL
The installation will be following the microsoft docs:
[WSL Win10](https://docs.microsoft.com/en-us/windows/wsl/install-win10). You will need to be a [Local Administrator](https://support.microsoft.com/en-us/help/4026923/windows-10-create-a-local-user-or-administrator-account)!

1. Open PowerShell as Administrator (Windows Key + X or right click on powershell run as admin) and run
   ```powershell
   Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
   ```
2. Restart your computer when prompted.
3. Click the `Get button` on [Ubuntu]( https://www.microsoft.com/en-us/p/ubuntu-1804-lts/9n9tngvndl3q?rtc=1 ) (You can install anther distro if you prefer but commands may be different in say Arch)


## Enterprise Proxy
If you company uses a proxy for SSL you will likely need to Install Your Root CA into you distro.

How do I know if I need this? Run `wget https://google.com` if you get an ssl error you may have a custom CA or someone is performing a [man in the middle attack](https://en.wikipedia.org/wiki/Man-in-the-middle_attack). View your cert in a browser and check with your company if they use a proxy before continuing.

>Note: Below code assumes you 100% trust the CA; If you don't stop and ask your security department before proceeding.

Below code will be following [How do I install a root certificate?](https://askubuntu.com/questions/73287/how-do-i-install-a-root-certificate)





### Installing a root/CA Certificate

Given a CA certificate file foo.crt, follow these steps to install it on Ubuntu:

Create a directory for extra CA certificates in `/usr/share/ca-certificates`:
```bash
sudo mkdir /usr/share/ca-certificates/extra
```
Copy the CA .crt file to this directory:

```bash
sudo cp foo.crt /usr/share/ca-certificates/extra/foo.crt
```

Let Ubuntu add the .crt file's path relative to /usr/share/ca-certificates to /etc/ca-certificates.conf:

```bash
sudo dpkg-reconfigure ca-certificates
```
To do this non-interactively, run:

```bash
sudo update-ca-certificates
```


In case of a .pem file on Ubuntu, it must first be converted to a .crt file:

```
openssl x509 -in foo.pem -inform PEM -out foo.crt
```

> Note: If you don't have openssl installed
> ```bash
>    sudo apt update 
>    sudo apt install libssl-devsudo apt 
> ```
> You should try to keep this packaged update to date by running the sudo apt `update` and `upgrade` commands. 
