# Mission Reflection

This laboratory activity helped me understand the difference between Virtual Machines and Docker containers. A Virtual Machine needs a complete operating system, so installing and starting one can take more time and use more computer resources. A Docker container is much faster because it uses the host operating system and only contains the application and the files it needs. In this activity, I was able to run an Nginx web server in just a few Docker commands.

Port mapping is important when running a web server inside a container. The command `-p 8080:80` connects port 8080 of the host computer to port 80 inside the container. This allows users to access the Nginx web server through `localhost:8080`. Without port mapping, the web server inside the container may not be directly accessible from the host.

When the `docker rm` command is used, the container itself is removed. Any data stored only inside the container can be lost after the container is removed. This is why important data should normally be stored using Docker volumes or another storage solution instead of keeping it only inside the container.

Containerization also changes how developers and IT operations teams work together. Developers can package an application with the dependencies it needs, while IT teams can run the same container in different environments. This can make deployment more consistent and reduce problems caused by differences between development and production environments. It supports the DevOps approach because development and operations can work together using the same deployment process.

My GitHub portfolio is also improving through this laboratory. I am learning how to organize my activities into folders, document commands, add screenshots, and explain what I learned. This makes my portfolio more complete and shows my progress in learning cloud computing and cloud-native technologies.
