#! /bin/sh sh

# 当前工具的版本号
tool_version="1.0";

# 显示版本号
function show_version(){
    echo "当前版本号：v$tool_version"
}

# 使用帮助
function usage(){

    cat <<EOF
    命令行搜索工具（v${tool_version}） 
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

    示例: s -b 搜索词1 搜索词2
EOF
        exit
}

function search(){
	words=($*);

	case ${words[0]} in
		-w|--web)
			web="http://"
			unset words[0];
			;;
		-b|--baidu)
			web="https://www.baidu.com/s?wd="
			unset words[0];
			;;
		-g|--google)
			web="https://www.google.com.hk/search?q="
			unset words[0];
			;;
		-l|--shell)
			web="http://linux.51yip.com/search/"
			unset words[0];
			;;
		-i|--github)
			web="https://github.com/search?q="
			unset words[0];
			;;
		-n|--npm)
			web="https://www.npmjs.com/search?q="
			unset words[0];
			;;
		*)
			web="https://www.google.com.hk/search?q="
			;;
	esac

	echo "正在搜索：${web}${words[*]} ..."
	key=`echo ${words[*]} | tr -d '\n' | xxd -plain | sed 's/\(..\)/%\1/g'`
	open "${web}${key}"
}

# app启动程序
function app_start(){
    case $1 in
        -v|--version)
            show_version ;;
        -h|--help)
            usage ;;
		*)
			search $*;;
    esac
}

app_start $*
