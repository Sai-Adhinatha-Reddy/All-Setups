amazon-linux-extras install java-openjdk11 -y
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.105/bin/apache-tomcat-9.0.105.tar.gz
tar -zxvf apache-tomcat-9.0.105.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-9.0.105/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-9.0.105/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="admin@123" roles="manager-gui, manager-script"/>' apache-tomcat-9.0.105/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-9.0.105/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-9.0.105/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-9.0.105/webapps/manager/META-INF/context.xml
sed -i '22d'  apache-tomcat-9.0.105/webapps/manager/META-INF/context.xml
sh apache-tomcat-9.0.105/bin/startup.sh

*******************For Amazon Linux 2023 version************************************ (For non root user)
sudo yum install java-17-amazon-corretto-devel -y
sudo wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.105/bin/apache-tomcat-9.0.105.tar.gz
sudo tar -zxvf apache-tomcat-9.0.105.tar.gz
sudo chown -R ec2-user:ec2-user apache-tomcat-9.0.105
sudo sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-9.0.105/conf/tomcat-users.xml
sudo sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-9.0.105/conf/tomcat-users.xml
sudo sed -i '58  a\<user username="tomcat" password="admin@123" roles="manager-gui, manager-script"/>' apache-tomcat-9.0.105/conf/tomcat-users.xml
sudo sed -i '59  a\</tomcat-users>' apache-tomcat-9.0.105/conf/tomcat-users.xml
sudo sed -i '56d' apache-tomcat-9.0.105/conf/tomcat-users.xml
sudo sed -i '21d' apache-tomcat-9.0.105/webapps/manager/META-INF/context.xml
sudo sed -i '21d'  apache-tomcat-9.0.105/webapps/manager/META-INF/context.xml
sudo sh apache-tomcat-9.0.105/bin/startup.sh
