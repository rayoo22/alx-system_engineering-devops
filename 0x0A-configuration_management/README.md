README for Puppet Tasks

This README file describes the tasks for creating a Puppet configuration management setup. The tasks involve creating a file, installing a package, and executing a command using Puppet.
Task 0: Create a File

Description:

Using Puppet, create a file in /tmp with specific properties.

Requirements:

    The file path must be /tmp/school.
    The file permission must be set to 0744.
    The file owner must be www-data.
    The file group must be www-data.
    The file must contain the text I love Puppet.

Example:

After applying the Puppet manifest, the file /tmp/school should exist with the specified properties and content.
Task 1: Install a Package

Description:

Using Puppet, install a specific version of the flask package from pip3.

Requirements:

    The package flask must be installed.
    The version of flask must be 2.1.0.

Example:

After applying the Puppet manifest, running flask --version should show that Flask 2.1.0 is installed.
Task 2: Execute a Command

Description:

Using Puppet, create a manifest that kills a process named killmenow.

Requirements:

    Must use the exec Puppet resource.
    Must use the pkill command to terminate the process.

Example:

After applying the Puppet manifest, any running process named killmenow should be terminated.
