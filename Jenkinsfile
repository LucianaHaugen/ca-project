node {
    stage('scm'){
        checkout poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'f13e393d-d899-4a9b-b857-a4034d025d3f', url: 'https://github.com/LucianaHaugen/ca-project.git']]]
    }
    stage('test'){
	sh 'python tests.py'}   
    stage('build'){
	sh 'python run.py'
}
}
