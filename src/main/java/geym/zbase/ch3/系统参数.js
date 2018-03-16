//查看命令行显示传递JVM的参数
java -XX:+PrintVMOptions test.java 

//查案所有显示或隐式参数
java -XX:+PrintCommandLineFlags test.java

// 查看所有参数
java -XX:+PrintFlagsFinal test.java