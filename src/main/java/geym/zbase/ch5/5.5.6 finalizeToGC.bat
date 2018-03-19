######
#    【ch05】 5.5.6 finalize对GC的影响 
######
javac LongFinalize.java 

java -XX:+PrintGCDetails ^ 
	-Xms10m -Xmx10m ^
	-XX:+HeapDumpOnOutOfMemoryError ^
	-XX:HeapDumpPath="./a.dump" ^
	LongFinalize ^
	