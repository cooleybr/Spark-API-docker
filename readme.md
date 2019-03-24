This application creates a SparkJava API in Docker Image

The base image is alpine which is a lightweight version of linux
 - OpenJDK8 serves as the Java compiler and Runtime Environment
 - OpenJDK8 and Maven require nss for compilation
 - Maven was used to build the application and all functionality currently exists in main (limited currently to hello world)
 - Default port is exposed in Dockerfile (4567)

Execute by entering:

docker build --tag=api .
 -  This command grabs the base image, updates dependencies, copies files, builds the project, and exposes port 4567

docker run -p 4567:4567 api 
 - This command runs the image and links host port with container port

open browser to localhost:4567/hello to test app


