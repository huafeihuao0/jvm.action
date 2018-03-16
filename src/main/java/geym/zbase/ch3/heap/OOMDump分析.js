//到处堆信息
java -Xms5m -Xmx20m ^
	 -XX:+HeapDumpOnOutOfMemoryError ^
	 -XX:HeapDumpPath=./a.dump ^
	 DumpOOM ^
	 


//线程转存
java -Xms5m -Xmx20m ^ 
	 "-XX:OnOutOfMemoryError=D:/F盘备份/学习/javaweb/实战JAVA虚拟机  JVM故障诊断与性能优化/jvm.action-master/src/main/java/geym/zbase/ch3/heap/printstatck.bat %p" 
	 -XX:+HeapDumpOnOutOfMemoryError ^
	 -XX:HeapDumpPath=./b.dump ^
	 DumpOOM ^
	 