> 这道题理解颇深，首先自己的解法是在tmp.go文件中，考虑的确实是dp问题，但是计算的方式是从开始向公主的位置计算，记录每个位置需要的最小血量和到达改位置后
> 剩余血量，这种算法存在一定的问题，虽然目前计算的是最小的血量，但是在计算的时候还需要考虑当前的剩余血量对于剩下的计算的影响， 所以这种算法能解决掉80%的输入
> 剩下的就需要另做考虑了。 经过查找文档， 发现问题的所在，我们需要从后向前计算，骑士的血量取决于当前的骑士去往下一个位置的剩余血量，而骑士可走的方向就是
> 向下，向右，所以为了当前血量值的最小，就需要到达下一个位置剩余血量最小，如果下一个位置的所需最小血量与当前位置的差值为 x， x为正数表示骑士需要消耗x的血量
> 到达目的地，所以，当前骑士的血量至少为x，如果x为负数表示骑士到达下一个位置需要消耗血量，还会增加血量，则当前值为1即可。
