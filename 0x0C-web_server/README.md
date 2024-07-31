Web Server Configuration Project
Overview

This project involves setting up and configuring a web server using both Bash scripts and Puppet manifests. The goal is to automate the server configuration process to ensure consistency and efficiency. The tasks cover various aspects of web server management, including file transfer, server setup, DNS configuration, URL redirection, and custom error pages.
Learning Objectives

By the end of this project, you should be able to:

    Understand the main role of a web server and the concepts of child processes.
    Explain why web servers typically use a parent-child process architecture.
    Identify and describe the main HTTP requests and DNS record types.
    Automate server configuration using Bash scripts and Puppet manifests.

Tasks
0. Transfer a File to Your Server

    Objective: Create a Bash script that transfers a file from a client to a server using SCP.
    Requirements:
        Accepts 4 parameters: path to the file, server IP, username, and path to SSH private key.
        Disables strict host key checking.
        Transfers the file to the user's home directory on the server.

1. Install Nginx Web Server

    Objective: Install and configure Nginx on a server.
    Requirements:
        Nginx should listen on port 80.
        When accessed via curl, Nginx should return a page containing the string "Hello World!".
        Provide a Bash script to configure the server.

2. Setup a Domain Name

    Objective: Set up a domain name using a .tech domain.
    Requirements:
        Provide the domain name in the answer file.
        Configure DNS records to point to the server's IP address.

3. Redirection

    Objective: Configure Nginx to redirect /redirect_me to another URL.
    Requirements:
        The redirection must be a "301 Moved Permanently".
        Provide a Bash script to configure the server.

4. Not Found Page 404

    Objective: Create a custom 404 error page in Nginx.
    Requirements:
        The custom page must return an HTTP 404 error code and contain the string "Ceci n'est pas une page".
        Provide a Bash script to configure the server.

5. Install Nginx Web Server (with Puppet)

    Objective: Install and configure Nginx using a Puppet manifest.
    Requirements:
        Nginx should listen on port 80.
        The root page should return "Hello World!" when queried.
        Include a 301 redirect for /redirect_me in the Puppet manifest.

Tools and Resources

    Editors: vi, vim, emacs
    OS: Ubuntu 16.04 LTS
    Shell Script Validation: All scripts must pass Shellcheck (version 0.3.7).
    Automation: Focus on automating tasks to streamline server management.

Notes

    Ensure all files are executable and end with a new line.
    Avoid using systemctl for restarting services; use alternative methods.
    Test scripts in a controlled environment to verify functionality.
    Propagation of DNS records may take time; plan accordingly.
