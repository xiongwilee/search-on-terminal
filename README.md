# 在终端唤起web搜索

## 使用方法：

### 一、下载文件：

下载`search_on_terminal.sh`文件到任意位置，比如我放在：

	~/tools/search_on_terminal.sh

### 二、加入自定义命令：

修改shell配置文件，通过`alias`加入自定义命令；例如，我用的`zsh`，则在`~/.zshrc`中添加配置：

	alias s='sh ~/tools/search_on_terminal.sh'

其他shell环境配置文件目录所在位置为：

	# zsh
	~/.zshrc 		
	
	# MAC
	/etc/bashrc 	
	
	# Linux
	~/.bashrc 		
	

### 三、重启终端，即可使用：

```
    命令行搜索工具
    $0 -[opt] [search word] # 如果没有[opt]，默认使用谷歌搜索
    参数说明：
    -[opt] : 搜索方式，默认使用谷歌香港搜索
        -v|--version      查看工具的版本号
        -h|--help         获取帮助
        -w|--web          直接打开网站
        -b|--baidu        用百度搜索
        -g|--google       用谷歌搜索
        -l|--shell        搜索命令行
        -i|--github       在github上搜索
        -n|--npm          在npm上搜索
    [search word] : 搜索词，可以通过空格隔开

```

示例如下：
```
	# 打开https://weibo.com
	$ s -w weibo.com 	

	# 使用百度搜索“天安门”
	$ s -b 天安门 		

	# 使用谷歌香港搜索“天安门”
	$ s -g 天安门		

	# 使用http://linux.51yip.com/search/ 搜索“find”命令的使用方法
	$ s -l find		

	# 使用github搜索node
	$ s -git node		
```