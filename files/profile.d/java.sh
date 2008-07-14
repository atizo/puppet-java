export JAVA_HOME=/usr/local/java
export CLASSPATH=$JAVA_HOME/jre/lib/rt.jar:
export PATH=$JAVA_HOME/bin:$PATH
# Xmx = 1/4 of physical memory, Xms = 1/8 of physical memory 
export JAVA_OPTIONS="-Djava.awt.headless=true -Xms50m -Xmx100m"

