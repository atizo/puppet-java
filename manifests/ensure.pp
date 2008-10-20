# manifests/ensure.pp

# if you'd like to ensure other java installation, 
# you should subclass this class
class java::ensure {
    exec{'ensure_java':
        command => 'alternatives --set java /usr/lib/jvm/jre-1.6.0-sun/bin/java',
        unless => "alternatives --display java | grep 'points to' | grep -q '/usr/lib/jvm/jre-1.6.0-sun/bin/java'",
    }
    exec{'ensure_javac':
        command => 'alternatives --set javac /usr/lib/jvm/java-1.6.0-sun/bin/javac',
        unless => "alternatives --display javac| grep 'points to' | grep -q '/usr/lib/jvm/java-1.6.0-sun/bin/javac'",
    }
}
