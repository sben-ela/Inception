## Docker Overview

Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker's methodologies for shipping, testing, and deploying code, you can significantly reduce the delay between writing code and running it in production.


## Docker architecture

Docker uses a client-server architecture. The Docker client talks to the Docker daemon, which does the heavy lifting of building, running, and distributing your Docker containers. The Docker client and daemon can run on the same system, or you can connect a Docker client to a remote Docker daemon. The Docker client and daemon communicate using a REST API, over UNIX sockets or a network interface. Another Docker client is Docker Compose, that lets you work with applications consisting of a set of containers.


## Docker Client:
The Docker client is the user interface or command-line tool that allows users to interact with Docker. It provides a command-line interface (CLI) and, in some cases, a graphical user interface (GUI) for managing Docker resources and executing commands. The Docker client can run on the same machine where Docker is installed or on a remote machine.

## Docker Daemon (Server):
The Docker daemon (or Docker server) is a background process that manages Docker containers on a host machine. It is responsible for building, running, and managing containers based on commands received from the Docker client. The daemon communicates with the host operating system, container runtimes (such as containerd), and the underlying infrastructure.
The Docker daemon exposes a RESTful API that allows the Docker client to communicate with it. The communication between the Docker client and the Docker daemon can occur over a local Unix socket (/var/run/docker.sock) or a network socket.


## overview of the interaction between the Docker client and Docker daemon:

Local Interaction:
When the Docker client and daemon are on the same machine, the client sends commands to the daemon using a Unix socket (/var/run/docker.sock). The client and daemon can communicate over this local socket without network overhead.

Remote Interaction:
When the Docker client is on a different machine than the Docker daemon, the client can connect to the daemon over the network. This is achieved by specifying the host where the Docker daemon is running, and the client communicates with the daemon using the Docker Remote API.

Command Execution:
The Docker client sends commands to the Docker daemon using the Docker CLI or API. Commands include building images, running containers, managing networks, and more.

Resource Management:
The Docker daemon is responsible for managing resources such as containers, images, volumes, and networks on the host machine. It communicates with container runtimes (e.g., containerd) for certain operations.