# Lab1

> 支持时钟，中断，输出

## Utility

### out(port, val)

将第一个参数加载到RA，第二个参数加载到RB，之后执行BOUT。目的在于输出一个char到终端

### ivec(void *isr)

将第一个参数中断向量起始地址装入RA，执行IVEC设置中断向量起始地址。

### stmr（int val）

将第一个参数装入RA，执行TIME设置时钟中断。

### halt(val)

将第一个参数装入RA，执行HALT停止。

### alltraps()

alltraps()简单的进行current++操作并返回。

## Process

### main()

main()函数的执行过程如下

```
current = 0

stmr(1000);             // 设置时钟中断
ivec(alltraps);         // 设置中断向量

asm(STI);               // 开中断

while (current < 10) {
// 当current奇数时输出1，否则输出0
if (current & 1) out(1, '1'); else out(1, '0');
}

halt(0); // 结束
```

程序就是在产生时钟中断修改current之后，main()当中的循环会改变输出为"1"或"0"。