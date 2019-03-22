node ('jnlp_agent') {
    sh 'id'
    docker.image('openjdk:8u131-jdk').inside() {
        sh 'java -version'
    }
}