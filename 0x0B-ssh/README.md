Task 0: Use a Private Key

Description: Write a Bash script that uses SSH to connect to your server using the private key located at ~/.ssh/school with the user ubuntu.

Requirements:

    Only use single-character flags for SSH.
    Do not use the -l flag.
    Do not handle the case of a private key protected by a passphrase.

Example Output:

plaintext

sylvain@ubuntu$ ./0-use_a_private_key
ubuntu@server01:~$ exit
Connection to 8.8.8.8 closed.
sylvain@ubuntu$

Task 1: Create an SSH Key Pair

Description: Write a Bash script that creates an RSA key pair.

Requirements:

    The private key must be named school.
    The key size must be 4096 bits.
    The key must be protected by the passphrase betty.

Example Output:

plaintext

sylvain@ubuntu$ ./1-create_ssh_key_pair
Generating public/private rsa key pair.
Your identification has been saved in school.
Your public key has been saved in school.pub.
The key fingerprint is:
5d:a8:c1:f5:98:b6:e5:c0:9b:ee:02:c4:d4:01:f3:ba vagrant@ubuntu

Task 2: Client Configuration File

Description: Share your SSH client configuration file to connect to a server without typing a password.

Requirements:

    Configure the SSH client to use the private key ~/.ssh/school.
    Configure the SSH client to refuse to authenticate using a password.

Example Output:

plaintext

sylvain@ubuntu$ ssh -v ubuntu@98.98.98.98
OpenSSH_6.6.1, OpenSSL 1.0.1f 6 Jan 2014
debug1: Reading configuration data /etc/ssh/ssh_config
...
debug1: Authentication succeeded (publickey).
Authenticated to 98.98.98.98 ([98.98.98.98]:22).
ubuntu@magic-server:~$

Task 3: Let Me In!

Description: Add a specific SSH public key to your server so that a user can connect using the ubuntu user.

Requirements:

    Add the provided SSH public key to your server's authorized_keys.

Provided Public Key:

plaintext

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN

Task 4: Client Configuration File (with Puppet)

Description: Use Puppet to configure your SSH client to connect to a server without typing a password.

Requirements:

    The SSH client must be configured to use the private key ~/.ssh/school.
    The SSH client must refuse to authenticate using a password.

Example Output:

plaintext

vagrant@ubuntu:~$ sudo puppet apply 100-puppet_ssh_config.pp
Notice: Compiled catalog for ubuntu-xenial in environment production in 0.11 seconds
Notice: /Stage[main]/Main/File_line[Turn off passwd auth]/ensure: created
Notice: /Stage[main]/Main/File_line[Declare identity file]/ensure: created
Notice: Finished catalog run in 0.03 seconds
vagrant@ubuntu:~$

