# Update package list
sudo apt update

# Install Java (required for Jenkins)
sudo apt install openjdk-17-jdk openjdk-17-jre

# Add Jenkins repository key and source list
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Install Jenkins
sudo apt update
sudo apt install jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Check Jenkins service status
sudo systemctl status jenkins
