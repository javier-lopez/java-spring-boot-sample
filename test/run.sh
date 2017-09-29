java -Xmx32m -version
cd java-spring-boot-sample
mvn install -DskipTests=true -Dmaven.javadoc.skip=true -B -V
mvn test -B
