# Jboss_Ansible
Jboss 7.4 Domain mode setup 

This setup requires `jboss 7.4` and `jdk 11`. By this setup one can create a jboss domain mode setup in linux server .There has two yml files , one for creating and running a jboss domain and host and the other one to create different new profile, server group and server . I have deployed a jenkins.war file in the newly created server . A folder has been created as name `JENKINS_HOME` , where all the jobs and plugins will be installed . I have configured a jvm options like this to manually create a JBOSS Home directory . For this test I have used `2.346.3` version of jenkins which is compatible with `jboss7.4` and `jdk 11`. One needs to download a `jenkins.war` file compatible with `jdk 11` and only the paths needs to be configured in such way so that it will properly add the resources. 


Thanks,
Author
