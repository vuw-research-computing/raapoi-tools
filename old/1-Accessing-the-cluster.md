# Access to the cluster is by SecureSHell (SSH)

*  Hostname: 10.60.49.210
*  Port: 22 
*  Username: Your VUW username
*  Password: Your cluster password

Note: We recommend against saving your password within your SSH client, this is counter to security best-practice and will most likely cause issues in the future.

## SSH Clients
### Mac OSX SSH Clients
You can use the built-in Terminal.app or you can download iTerm2 or XQuartz. XQuartz is required to be installed if you wish to forward GUI applications (matlab, rstudio, xstata, sas, etc), aka X forwarding.

_Terminal.app_

To login using the built-in Terminal.app on Mac, go to 
* Applications --> Utilities --> Terminal.app 
* Or use Spotlight search (aka Command-Space)

[iTerm2](https://www.iterm2.com/)


[XQuartz](https://www.xquartz.org/)

Once the program is running you can type:

  `ssh username@10.60.49.210`

Replace "username" with your VUW username

### Windows SSH Clients 

Free Clients:

[MobaXterm](https://mobaxterm.mobatek.net/) is a good option 

[PuTTy](https://www.putty.org/).  

There are also the XWin32 and SecureCRT clients, but these cost money to license.

[X-Win32](https://www.starnet.com/xwin32/)

[SecureCRT](https://www.vandyke.com/products/securecrt/)
