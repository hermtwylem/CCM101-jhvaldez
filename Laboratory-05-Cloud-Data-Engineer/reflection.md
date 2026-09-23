# Mission Reflection

This laboratory activity helped me understand why object storage is useful for applications that handle many files such as photos. Object storage is better suited for storing millions of photos because it is designed for large amounts of unstructured data. Instead of treating each photo like a part of a traditional hard drive, object storage keeps each file as an object with its own information and identifier. This makes it easier to organize and access a large number of images.

Using Docker also made deploying the MinIO server easier. Instead of installing and configuring many different software packages manually, I only needed to run a Docker command. The command downloaded the MinIO image, created the container, configured the ports, and set the administrator credentials. This made the deployment process faster and easier to repeat.

A bucket is a storage container used to organize objects in object storage. In this activity, I created a bucket called `client-photos`. The bucket was used to store the sample image or file that I uploaded through the MinIO Web Console.

Large enterprise companies can protect their object storage data in different ways. They can keep multiple copies of data, use replication, backups, and distribute data across different servers or locations. These methods help prevent data loss when a physical server fails.

My confidence in using the Linux command line is also improving. At first, commands can be difficult to remember, but practicing Docker commands and checking containers with `docker ps` helped me become more comfortable. This activity also showed me how Linux commands can be used together with cloud technologies to deploy and manage services.

