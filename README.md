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

	$ s -[opt] [search word] # 如果没有[opt]，默认使用谷歌香港搜索

参数说明：

	-[opt] : 搜索方式，默认使用谷歌香港搜索
		-w : 直接打开网站
		-b : 使用百度搜索
		-g : 使用谷歌搜索
		-l : 搜索shell命令
		-git : 使用github搜索仓库
	[search word] : 搜索词，可以通过空格隔开

例如：

	# 打开http://weibo.com
	$ s -w weibo.com 	

	# 使用百度搜索“天安门”
	$ s -b 天安门 		

	# 使用谷歌香港搜索“天安门”
	$ s -g 天安门		

	# 使用http://linux.51yip.com/search/ 搜索“find”命令的使用方法
	$ s -l find		

	# 使用github搜索node
	$ s -git node		
