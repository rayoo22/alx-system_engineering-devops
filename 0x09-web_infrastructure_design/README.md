0x09. Web Infrastructure Design
0. Simple Web Stack
Task Description

Design a simple web infrastructure on a whiteboard that hosts the website reachable via www.foobar.com.
Requirements

    Components:
        1 server
        1 web server (Nginx)
        1 application server
        1 set of application files (your code base)
        1 database (MySQL)
        1 domain name foobar.com configured with a www record that points to your server IP 8.8.8.8

Explanation

    User Access:
        A user types www.foobar.com into their web browser.
        The browser sends a request to the DNS server to resolve www.foobar.com to an IP address (in this case, 8.8.8.8).

    DNS Resolution:
        The www record is a CNAME (Canonical Name Record) or an A record that maps the domain www.foobar.com to the server's IP address.

    Server Components:
        Web Server (Nginx): Handles HTTP requests from the user, serving static content directly, and forwarding dynamic requests to the application server.
        Application Server: Runs the web application, processing business logic, and interacting with the database. This can be any server running the application code (e.g., Flask, Django, Node.js).
        Database (MySQL): Stores and retrieves data for the application.

    Communication:
        The web server communicates with the user's browser over HTTP/HTTPS.
        The web server and application server communicate internally, typically over HTTP or a similar protocol.
        The application server communicates with the database server over a database protocol (e.g., MySQL protocol).

Issues

    Single Point of Failure (SPOF): If the single server fails, the entire website becomes unavailable.
    Downtime for Maintenance: Deploying new code or restarting the server causes downtime.
    Scalability: A single server cannot handle high traffic volumes efficiently.

1. Distributed Web Infrastructure
Task Description

Design a three-server web infrastructure to host the website www.foobar.com.
Requirements

    Components:
        2 additional servers (total 3 servers)
        1 web server (Nginx)
        1 application server
        1 load-balancer (HAProxy)
        1 set of application files (your code base)
        1 database (MySQL)

Explanation

    Load Balancer (HAProxy):
        Distributes incoming traffic among the servers using a specified algorithm (e.g., round-robin).
        Can be configured for an Active-Active setup (both servers handle traffic) or Active-Passive setup (one server is on standby).

    Web Server (Nginx):
        Each server has an Nginx instance handling HTTP requests.

    Application Server:
        Each server runs the application, processing requests and interacting with the database.

    Database:
        Primary-Replica (Master-Slave) configuration where the primary node handles writes and the replica node handles reads, enhancing performance and redundancy.

Issues

    SPOF: The load balancer or the primary database can still be a SPOF.
    Security: No firewall or HTTPS means the infrastructure is vulnerable to attacks.
    Monitoring: Lack of monitoring means issues cannot be detected or resolved quickly.

2. Secured and Monitored Web Infrastructure
Task Description

Design a three-server web infrastructure that is secured, serves encrypted traffic, and is monitored.
Requirements

    Components:
        3 firewalls (one per server)
        1 SSL certificate for HTTPS
        3 monitoring clients (e.g., data collectors for Sumologic)

Explanation

    Firewalls:
        Protect each server from unauthorized access.

    HTTPS (SSL Certificate):
        Encrypts traffic between the user's browser and the web server, ensuring secure communication.

    Monitoring:
        Collects data on server performance, traffic, and potential issues.
        Monitoring tools track metrics such as Queries Per Second (QPS) to ensure the web server is functioning correctly.

Issues

    SSL Termination: Terminating SSL at the load balancer can be a security risk if the traffic between the load balancer and servers is not encrypted.
    Database Writes: Having only one MySQL server capable of accepting writes can become a bottleneck.
    Homogeneous Servers: All servers having the same components can lead to inefficiencies and difficulties in scaling.

3. Scale Up
Task Description

Scale up the infrastructure by adding servers and configuring a load-balancer cluster.
Requirements

    Components:
        1 additional server
        1 load-balancer (HAProxy) configured as a cluster with the existing one
        Split components (web server, application server, database) into dedicated servers

Explanation

    Load-Balancer Cluster:
        Provides high availability and distributes traffic efficiently.
        Active-Active configuration where both load balancers handle traffic simultaneously.

    Dedicated Servers:
        Separate servers for web server, application server, and database to improve performance and scalability.

Additional Elements

    Why Additions:
        Adding servers and splitting components reduces the load on individual servers, improving performance and reliability.
        A load-balancer cluster ensures no single point of failure for traffic distribution.
