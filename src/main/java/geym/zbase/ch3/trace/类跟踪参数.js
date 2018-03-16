//跟踪类的加载与卸载
java -verbose:class UnloadClass.java

// 跟踪类的加载
java -XX:+TraceClassLoading UnloadClass.java

// 跟踪类的卸载
java -XX:+TraceClassUnloading UnloadClass.java

// 查看类图
java -XX:+PrintClassHistogram UnloadClass.java