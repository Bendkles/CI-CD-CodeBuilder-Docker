# CodeBuilder with Docker Project

## Overview

This project is a Continuous Integration/Continuous Deployment (CI/CD) pipeline that uses AWS CodeBuild to build Docker images and push them to Docker Hub. The project consists of two sub-projects, "techmax" and "jupiter", each with its own Dockerfile for building a Docker image. The images are built from Amazon Linux and include a web server and the necessary files to run a web application.

## Main Concepts:

	▪ Create a Repository in Docker Hub
	▪ Create a GitHub Repository and Clone it on Your Computer
	▪ Create the Dockerfile
	▪ Create Shell Scripts
	▪ Create Environment Variable
	▪ Create the Buildspec File
	▪ Create Personal Access Token
	▪ Create Build Project in CodeBuild
  	▪ Build Another Docker Image and Push it to Docker Hub

## Project Structure

The project is organized into the following directories and files:

- `techmax/`: This directory contains the Dockerfile for the techmax project. The Dockerfile specifies the steps to create a Docker image that runs a web server and serves the techmax web application.

- `jupiter/`: This directory contains the Dockerfile for the jupiter project. The Dockerfile specifies the steps to create a Docker image that runs a web server and serves the jupiter web application.

- `build-img.sh`: This shell script builds the Docker image specified by the `IMAGE_TAG` environment variable. The Dockerfile used for building the image is located in the directory specified by `IMAGE_TAG`.

- `push-img.sh`: This shell script tags the Docker image specified by the `IMAGE_TAG` environment variable with the Docker Hub username and repository name, and then pushes the image to Docker Hub.

- `buildspec.yml`: This file is used by AWS CodeBuild to execute the build process. It specifies the commands to run during each phase of the build process.


### Dockerfiles
The Dockerfiles in the "jupiter" and "techmax" sub-folders contain the necessary instructions to build the Docker images. They specify the base image to use, the dependencies to install, and the commands to run.

### Shell Scripts
The shell scripts (build-img.sh and push-img.sh) automate the process of building and pushing the Docker images. They contain the necessary Docker commands to perform these tasks.

### Buildspec File
The buildspec.yml file is a crucial component of the AWS CodeBuild setup. It instructs CodeBuild on how to run the build. It specifies the environment variables, the build commands, and the post-build commands.


## AWS CodeBuild Configuration

This section will provide a detailed, step-by-step guide on how to configure AWS CodeBuild for this project. 
*This is not a tutorial, but rather a set of instructions specific to this project's setup and requirements.

The AWS CodeBuiThe steps to create and configure the CodeBuild project are as follows:

1. Connect AWS CodeBuild to your GitHub account using a personal access token.

2. Select the GitHub repository that contains your project.

3. Configure the build environment to use Amazon Linux 2 and the standard runtime.

4. Enable the "Privileged" flag to allow the build process to build Docker images.

5. Add the environment variables used in the shell scripts (`IMAGE_TAG`, `DOCKER_HUB_USERNAME`, `DOCKER_HUB_PASSWORD`, `DOCKER_HUB_REPO_NAME`) to the build environment.

6. Specify that the buildspec file is located in the root of the project directory and is named `buildspec.yml`.

7. Start the build process.

Once the build process is started, AWS CodeBuild will execute the commands specified in the buildspec file, which will run the shell scripts to build the Docker image and push it to Docker Hub.

Please note that the actual values for the environment variables should be provided in the AWS CodeBuild project settings. The `IMAGE_TAG` should match the directory's name that contains the Dockerfile for the image you want to build. The `DOCKER_HUB_USERNAME`, `DOCKER_HUB_PASSWORD`, and `DOCKER_HUB_REPO_NAME` should be your Docker Hub username, password, and the name of the Docker Hub repository where you want to push the image, respectively.

## Conclusion

This project demonstrates how to use AWS CodeBuild to automate the process of building Docker images and pushing them to Docker Hub. It provides a solid foundation for implementing a CI/CD pipeline for Docker-based applications.

## Acknowledgments and Credits
This project is entirely based on the YouTube project "CI/CD Project For Beginner | Build Docker Image | Create a CodeBuild Project" by "AOS Note" (www.aosnote.com)
