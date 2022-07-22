sleep 15
java -jar /var/tmp/jenkins-cli.jar -s http://localhost:8080 -auth admin:admin create-job product-manager < /var/tmp/product-manager-job.xml