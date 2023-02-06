pipeline {
    agent any
    options{
	timestamp()
    }
    stages {
        stage('Build') {
	    steps {
		sh 'docker-compose build'
	    }
	}
	stage('Deploy') {
	    steps {
		sh 'docker-compose up -d'
	    }
	}
    }
}
