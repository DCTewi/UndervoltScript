# Undervolt Script

---

## Instruction

A simple script to automatically undervolt your Intel® CPU at computer startup.

## Dependence

- Windows
- XTU(Intel® Extreme Tuning Utility)
- PowerShell
- Task Scheduler

## Usage

1. Clone or download this repo to your computer at a safe path
2. Change **YOUR VOLTAGE OFFSET** in `undervolt.ps1`
3. Check and change the path of yours  `XTUCli.exe` in `undervolt.ps1`
4. Check and change the path of yours  `undervolt.ps1` in `undervolt.vbs`
5. Run the undervolt.vbs to make sure it works
6. Open Task Scheduler and create a basic new task:
   - Trigger: Log on
   - Actions: The undervolt.vbs
   - Check the "Run with highest privileges" option in finish step
7. End

---

## 介绍

一个开机时自动使用XTU给CPU降压的小脚本。

## 依赖

- Windows
- XTU(Intel® Extreme Tuning Utility)
- PowerShell
- 计划任务（Windows自带）

## Usage

1. 克隆、下载或者复制这两个脚本到你的本地某个安全的路径
2. 将`undervolt.ps1`中的 **YOUR VOLTAGE OFFSET** 更改为你降压的大小，**单位是mV，如0.165V则填写165**
3. 把你的 `XTUCli.exe` 路径补全到 `undervolt.ps1`
4. 把你的  `undervolt.ps1` 路径补全到 `undervolt.vbs`
5. 双击试试undervolt.vbs能不能正常运行
6. 打开计划任务，找个地方新建一个基本事件：
   - 触发器：当前用户登陆时
   - 操作：浏览、选中这个vbs脚本
   - 在最后一步的选项卡中勾选“以最高权限运行”
7. 完事