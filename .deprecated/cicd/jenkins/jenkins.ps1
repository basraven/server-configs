# docker rmi la1r-jenkins --force
docker rm la1r-jenkins --force
docker build . -t la1r-jenkins
docker run --rm --privileged --name la1r-jenkins --hostname la1r-jenkins -it -v $pwd/credentials.xml/:/var/jenkins_home/credentials.xml -v $pwd/jobs/:/var/jenkins_home/jobs -v $pwd/jenkins.yaml:/var/jenkins_home/casc_configs/jenkins.yaml -v $pwd/../ansible/:/ansible -v $pwd/../../kubernetes:/kubernetes -v $pwd/../../credentials/:/credentials -p 8088:8080 -p 50000:50000 la1r-jenkins
