
弹窗式任务记录脚本。让用户在弹窗中选择当前正在进行的工作。结果记录到文件中。

## 基于taskwarrior
默认的数据源，是taskwarrior的任务列表

## 基于zenity
需要安装zenity来支持弹窗

## 可使用crontab定时调用
例子如下

```bash
0 9-20 * * * export DISPLAY=:0 && export XMODIFIERS="@im=fcitx" && export GTK_IM_MODULE=fcitx && export QT_IM_MODULE=fcitx && $HOME/pop-up-task-diary.sh
```

