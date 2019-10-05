all: build
build:
	@echo 正在获取xlsx库
	@git clone https://github.com/tealeg/xlsx
	@echo 正在编译xlsx2csv
	@go build xlsx2csv.go
	@echo 正在编译csv2xlsx
	@go build csv2xlsx.go
	@echo 编译完成
install:
	@echo 正在安装xlsx2csv
	@install -m 0755 xlsx2csv /usr/local/bin
	@echo 正在安装csv2xlsx
	@install -m 0755 csv2xlsx /usr/local/bin
	@echo 安装完成
clean:
	@echo 正在清除执行文件
	@rm xlsx2csv csv2xlsx
	@echo 清除完成
