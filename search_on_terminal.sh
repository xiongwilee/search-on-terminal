#! /bin/sh sh
case $1 in
	-w)
		web="http://"
		;;
    -b)
		web="https://www.baidu.com/s?wd="
		;;
    -g)
		web="https://www.google.com.hk/search?q="
		;;
    -l)
		web="http://linux.51yip.com/search/"
		;;
    -git)
		web="https://github.com/search?q="
		;;
    -npm)
		web="https://www.npmjs.com/search?q="
		;;
    *)
		web="https://www.google.com.hk/search?q="
		;;
esac

for item in $*
do
	if [[ "$item" != "-w" && "$item" != "-b" && "$item" != "-g" &&  "$item" != "-l" && "$item" != "-git" && "$item" != "-npm" ]]; then
		if [ "$searchWord" == "" ];then
			searchWord="$item";
		else
			searchWord="$searchWord $item"
		fi
	fi
done;
echo "正在搜索：${web}${searchWord} ..."
open "${web}${searchWord}"
