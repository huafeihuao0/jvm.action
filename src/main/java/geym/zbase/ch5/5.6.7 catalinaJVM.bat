######
#  【ch05】 5.6.7 tomcat的虚拟机配置 
######
set CATALINA_OPTS=-XLoggc:gc.log
-Xms32m -Xmx32m -XX:PermSize=32m
-XX:+UseSerialGC
-XX:+PrintGCDetails 
-XX:+HeapDumpOnOutOfMemoryError