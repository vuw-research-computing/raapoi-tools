BUILD_DIR := build

.PHONY: all clean

all: $(BUILD_DIR)/vuw-largest-slots

$(BUILD_DIR)/vuw-largest-slots: $(wildcard *.go)
	@mkdir -p $(BUILD_DIR)
	@go mod init vuw-largest-slots
	@go get github.com/alecthomas/kingpin
	@go build -o $@

clean:
	@rm -rf $(BUILD_DIR)
