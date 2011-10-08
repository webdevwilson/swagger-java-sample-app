set WORDNIK_OPTS=

set JAVA_DEBUG_OPTIONS="-Xdebug -Xrunjdwp:transport=dt_socket,address=8015,server=y,suspend=n "
set JAVA_CONFIG_OPTIONS="-Xms1000m -Xmx1000m -XX:NewSize=256m -XX:MaxNewSize=256m -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:PermSize=256m -XX:MaxPermSize=128m"
export JAVA_OPTS="-Duser.timezone=GMT %JAVA_CONFIG_OPTIONS% %JAVA_DEBUG_OPTIONS% "

echo "Starting Embedded Jetty With Command:"
set PARAMETERS=-jar start.jar conf\jetty.xml
set COMMAND=java -Dlog4j.configuration=file:conf\log4j.properties -DSTART=conf\start.config %WORDNIK_OPTS% %JAVA_OPTS% %DEV_OPTS% %PARAMETERS%
echo %COMMAND%
%COMMAND%

