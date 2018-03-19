######
#	【ch05】 5.5.5 TLAB 
######
#打开 TLAB 对象分配缓存
javac UseTLAB.java

java -server -XX:+UseTLAB ^
	 -Xcomp -XX:-BackgroundCompilation ^
	 -XX:-DoEscapeAnalysis ^
	 UseTLAB

# 关闭 TLAB 对象分配缓存
javac UseTLAB.java

java -server -XX:-UseTLAB ^
	 -Xcomp -XX:-BackgroundCompilation ^
	 -XX:-DoEscapeAnalysis ^
	 UseTLAB

# 指定 TLAB 相关参数
java UseTLAB.java

java -server  ^
	-XX:+UseTLAB -XX:+PrintTLAB -XX:+PrintGCDetails ^
	-XX:TLABSize=102400 -XX:-ResizeTLAB ^
	-XX:TLABRefillWasteFraction=100 ^
	-XX:-DoEscapeAnalysis ^
	UseTLAB ^
	

######
#    【ch05】 5.5.6 finalize对GC的影响 
######
javac LongFinalize.java 

java -XX:+PrintGCDetails ^ 
	-Xms10m -Xmx10m ^
	-XX:+HeapDumpOnOutOfMemoryError ^
	-XX:HeapDumpPath="./a.dump" ^
	LongFinalize ^
	