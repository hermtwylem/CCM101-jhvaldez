# Mission Reflection

Writing a `docker-compose.yml` file makes a cloud engineer's job easier because the configuration of the application can be written in one file. Instead of manually typing many commands to create and connect containers, Docker Compose can start the whole application using one command. This also makes the deployment easier to repeat when the same environment is needed again.

YAML indentation is very important because YAML uses spaces to organize the configuration. If I make an indentation error or use a Tab instead of spaces, Docker Compose may not understand the file correctly. This can cause an error and prevent the containers from starting. Because of this, I learned that even small formatting mistakes can affect a deployment.

We used environment variables such as `MYSQL_PASSWORD`, `MYSQL_DATABASE`, and `MYSQL_USER` to provide the database configuration needed by the containers. These variables make the configuration easier to manage because the application can use the values without placing them directly into commands. The `MYSQL_HOST` variable also allows the Nextcloud container to find the MariaDB container using the service name.

It was interesting to see how a complete cloud storage application could be deployed in just a few minutes. Nextcloud and MariaDB were running as separate containers, but Docker Compose connected them so they could work together. This helped me understand how containerized applications can be deployed quickly.

Since Mission 1, my understanding of Cloud Computing has improved. I started by learning basic cloud concepts and Linux commands. Now I understand more about containers, multi-tier applications, Docker Compose, and Infrastructure as Code. I also learned that cloud engineering is not only about running commands but also about creating organized and repeatable deployment configurations.
