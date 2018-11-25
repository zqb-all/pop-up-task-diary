#!/bin/bash

# author: https://github.com/zqb-all

diary="$HOME/taskdiary.txt"

taskchoice=$(cut -d'"' -f 2 "$HOME"/.task/pending.data | sed '{x;p;x;}' | \
	zenity --list --checklist --title="选择你正在做的工作" --column="是否正在做?" --column="工作项" \
	--timeout 600 --width 600 --height 400)

timenow=$(date "+%Y-%m-%d %H:%M:%S")

[[ $taskchoice = *"其他"* ]] && {
	taskother=$(zenity --title="补充说明" --text "其他工作" --entry --timeout 600)
	[  x"$taskother" != x"" ] && echo "$timenow : $taskother" >> "$diary"
}

[ x"$taskchoice" = x"" ] && {
	taskother=$(zenity --title="补充说明" --text "请输入当前工作" --entry --timeout 600)
	[  x"$taskother" != x"" ] && echo "$timenow : $taskother" >> "$diary"
}

[ x"$taskchoice" != x"其他" ] && {
	[  x"$taskchoice" != x"" ] && echo "$timenow : $taskchoice" >> "$diary"
}
