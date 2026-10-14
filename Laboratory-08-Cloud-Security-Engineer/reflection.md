# Mission Reflection

Completing this laboratory activity helped me understand the importance of securing a cloud server. I learned that a host-based firewall protects a server by controlling incoming and outgoing network traffic. Even if the physical network perimeter is breached, the firewall can still block unauthorized connections to the server. This provides another layer of protection and helps reduce security risks.

Managing open network ports is also important because every open port can become a possible entry point for attackers. Services that are not needed should not be exposed because they can increase the server's attack surface. By using UFW, I learned how to block incoming traffic by default and allow only the services required by the application. Allowing SSH and port 8080 showed me how firewall rules can provide access to authorized services while limiting unnecessary connections.

In a real enterprise environment, leaving a database port such as MySQL port 3306 open to the public internet is dangerous. Attackers could attempt to guess passwords, exploit vulnerabilities, or access sensitive information if the database is not properly protected. Database access should be restricted to trusted servers and authorized users.

This mission also changed my perspective on how easily a server can become vulnerable when security settings are ignored. A running application is not enough; it must also be protected through proper configuration, monitoring, and regular security checks.

Finally, having eight completed missions in my GitHub cloud computing portfolio helps me organize my laboratory activities and track the skills I have learned. It also gives me a place to show my progress in cloud computing, Linux commands, deployment, and security. Overall, this activity taught me that protecting a server requires careful planning and continuous attention to security.
