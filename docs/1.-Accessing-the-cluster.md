# Access to the cluster is by SecureSHell (SSH)

*  Hostname: 10.60.49.210
*  Port: 22 
*  Username: Your VUW username
*  Password: Your cluster password

Note: We recommend against saving your password within your SSH client, this is counter to security best-practice and will most likely cause issues in the future.

## SSH Clients
### Mac OSX SSH Clients
Built-in Terminal.app or you can download XQuartz. XQuartz is required to be installed if you wish to forward GUI applications (matlab, rstudio, xstata, sas, etc), aka X forwarding.

Terminal.app
To login using the built-in Terminal.app on Mac, go to Applications --> Utilities --> Terminal.app

Once the Terminal is running you can type:

  `ssh username10.60.49.210`

Replace "username" with your VUW username

### Windows SSH Clients 
[MobaXterm](https://mobaxterm.mobatek.net/) is a good option, but other free clients exist such as [PuTTy](https://www.putty.org/).  There is also the XWin32 and SecureCRT clients, but these cost money to license.