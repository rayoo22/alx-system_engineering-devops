Web Server Configuration Tasks
This repository contains solutions to several tasks related to configuring a web server using Nginx. Below are the descriptions of each task along with their requirements:

Task 0: Transfer a file to your server
This task involves writing a Bash script that transfers a file from a client to a server using scp. The script accepts four parameters: the path to the file to be transferred, the IP address of the server, the username scp connects with, and the path to the SSH private key that scp uses.

Task 1: Install nginx web server
In this task, we install the Nginx web server on a server (web-01) and configure it to listen on port 80. Additionally, we ensure that when querying Nginx at its root / with a GET request using curl, it returns a page containing the string "Hello World!".

Task 2: Setup a domain name
For this task, we set up a domain name using .TECH Domains. The domain name is registered, and DNS records are configured with an A entry so that the root domain points to the web-01 IP address.

Task 3: Redirection
This task involves configuring the Nginx server to redirect requests from /redirect_me to another page using a "301 Moved Permanently" response. A Bash script is provided to automatically configure a new Ubuntu machine to meet these requirements.

Task 4: Not found page 404
In this task, we configure the Nginx server to have a custom 404 page that returns an HTTP 404 error code and contains the string "Ceci n'est pas une page". Similar to Task 3, a Bash script is provided to automate the configuration process.

Task 5: Install Nginx web server (w/ Puppet)
For the advanced task, we use Puppet to install and configure the Nginx server. The server should listen on port 80 and return a page containing the string "Hello World!" when queried at its root. Additionally, resources are included in the Puppet manifest to perform a 301 redirect when querying /redirect_me.

Each task includes specific requirements and instructions for configuring the Nginx server. The provided solutions ensure that the server is properly set up and meets the specified criteria.

Repository: alx-system_engineering-devops

Directory: 0x0C-web_server
