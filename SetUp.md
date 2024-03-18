# Setup Sonarqube using Docker
Step 1: Install Docker on Linux

Use your distribution's package manager to install Docker.
For example, on Ubuntu, you can use the following commands:

sudo apt update
sudo apt install docker.io
Steps to follow to make sure users other than root are able to execute docker commands
https://docs.docker.com/engine/install/linux-postinstall/

Step 2: Run SonarQube Container

Open a terminal or command prompt.
Run a SonarQube container:

docker run -d --name sonarqube -p 9000:9000 sonarqube:lts-community
-d: Run the container in detached mode.

--name sonarqube: Assign a name to the container (you can use any name).
-p 9000:9000: Map port 9000 from the container to the host.
Wait a few moments for the container to start.

Step 3: Access SonarQube

Open a web browser and navigate to http://localhost:9000.

Log in to SonarQube:

Default credentials: admin (username) and admin (password).

*********
# Nexus3 Installation on Linux using Docker Image-


1.docker run -d -p 8081:8081 --name nexus sonatype/nexus3
This command pulls the Nexus 3 Docker image from the official Sonatype repository and runs it as a detached container (-d). It exposes the Nexus web interface on host port 8081 (-p 8081:8081) and names the container "nexus."

2. Retrieve the Initial Admin Password:
Wait for Nexus to start, and then retrieve the initial admin password. You can do this by checking the logs or using the following command:

docker ps
# note down container_ID
docker exec -it container_ID /bin/bash
# cat sonatype-work/nexus3/admin.password
This command uses docker exec to execute a command inside the running "nexus" container. The command cat /nexus-data/admin.password prints the initial admin password to the terminal.

3. Access Nexus 3 Web Interface:
Open a web browser and go to http://localhost:8081. Log in with the username "admin" and the password retrieved in the previous step.

Note: Make sure to wait for Nexus 3 to fully initialize before attempting to retrieve the admin password.

