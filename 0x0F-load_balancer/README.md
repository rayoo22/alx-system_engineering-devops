Load Balancer Configuration Tasks

This repository contains solutions for the load balancer configuration tasks as part of the ALX System Engineering & DevOps curriculum.

Task 0: Double the number of webservers

In this task, the objective is to configure web-02 to be identical to web-01. This involves automating the configuration process using a Bash script. Additionally, Nginx must be configured on both servers to include a custom HTTP response header, X-Served-By, which contains the hostname of the server.

Requirements:

Configure Nginx to include a custom header on web-01 and web-02.
The custom HTTP header must be named X-Served-By.
The value of the custom HTTP header must be the hostname of the server.
Write a Bash script, 0-custom_http_response_header, to configure a new Ubuntu machine to meet the specified requirements.

Task 1: Install your load balancer

The objective of this task is to install and configure HAProxy on lb-01 server. HAProxy should be configured to distribute traffic to web-01 and web-02 servers using a round-robin algorithm. It should also be manageable via an init script. Additionally, ensure that the servers are configured with the appropriate hostnames.

Requirements:

Install and configure HAProxy on lb-01 server.
Configure HAProxy to distribute traffic to web-01 and web-02.
Use a round-robin algorithm for distributing requests.
HAProxy should be manageable via an init script.
Ensure the servers are configured with the correct hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02.
Write a Bash script to configure a new Ubuntu machine to meet the specified requirements.

Task 2: Add a custom HTTP header with Puppet (Advanced)

This task requires automating the creation of a custom HTTP header response using Puppet. The custom header, X-Served-By, should contain the hostname of the server Nginx is running on.

Requirements:

Use Puppet to configure a new Ubuntu machine.
Add a custom HTTP header named X-Served-By to Nginx.
The value of the custom HTTP header must be the hostname of the server.
Write a Puppet script, 2-puppet_custom_http_response_header.pp, to configure a new Ubuntu machine to meet the specified requirements.
