Initialise a go module
```bash
go mod init vuw-largest-slots
```

This command will create a new go.mod file in your project directory.

Run the following command to download the required dependencies (in this case, the github.com/alecthomas/kingpin package):

```bash
go get github.com/alecthomas/kingpin
```

Now, you should be able to compile your Go code with the following command:
```bash
go build vuw-largest-slots.go
```

This will create an executable file named vuw-largest-slots
