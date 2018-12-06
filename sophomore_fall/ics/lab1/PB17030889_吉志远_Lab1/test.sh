#! /bin/bash
# 输入lut表格, 新编辑测试文件故覆盖写入
echo "file rshiftlut" > tb
# 打开rshift.obj
echo "file rshift" >> tb
# 随机生成R0
R0=$((RANDOM%32768))
echo "register R0 #$R0" >> tb
# 随机生成R1
R1=$((RANDOM%32768))
echo "register R1 #$R1" >> tb
# 在303a(HALT)处设置断点
echo "break set 303a" >> tb
# 执行
echo "finish" >> tb
# END
echo "quit" >> tb
echo "R0:$R0,R1:$R1"
./lc3sim -s tb | tail -4
python gcd.py $R0 $R1
