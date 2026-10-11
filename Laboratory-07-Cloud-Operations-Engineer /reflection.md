# Laboratory Activity 7 Reflection

In this laboratory activity, I learned that monitoring is an important part of managing a cloud server. I also learned how to use Linux commands and Docker to check the condition of a server and its web application.

**1. Why is it important to check the host server's resources even if your containers are running perfectly?**

It is important to check the host server's resources because containers still depend on the server's CPU, memory, and disk storage. Even if a container is running properly, the server may not have enough resources when many users access the website at the same time. Low memory can affect performance, and a full disk can prevent the application from saving files or logs. By checking the host regularly, administrators can find possible problems early and help keep the application running smoothly.

**2. If a user complains that they cannot log into a web application, how would the `docker logs` command help you solve the problem?**

The `docker logs` command helps me check the messages produced by the application inside the container. If a user cannot log in, I can look for error messages, failed requests, or other information related to the problem. These logs may help me determine whether the issue is related to the application or a request that failed. After finding useful information, I can investigate the cause and work on the proper solution.

**3. What is the difference between monitoring logs and monitoring metrics?**

Logs and metrics provide different types of information. Logs contain records of events, such as successful website requests and errors when a user opens a missing page. Metrics provide numerical information about performance, such as CPU usage, memory consumption, and network activity. Logs help me understand what happened, while metrics help me measure how the system is performing.

Overall, this activity helped me understand the importance of checking both the server and its containers. I learned that cloud operations engineers should use actual data instead of guessing when troubleshooting problems. These skills can help me monitor applications, find errors, and maintain reliable cloud services.

