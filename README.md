# Inception

This is a 42Wob project about using Docker to run applications.

Subject is included in the repository.

The project is tailored to the virtual machine i was using.
Therefore, when trying to run the makefile, there will most likely be errors
due to the paths to certain data not being the same.
To get it to run properly the paths of the volumes in the docker-compose file
need to be altered to directories existing locally.

Generally the application can be run using the Makefile, it might be nessecary
to add the domain name to the hosts file on your computer.
