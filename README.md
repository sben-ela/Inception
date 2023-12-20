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


## Docker Hub:

Public Registry: Docker Hub is a public Docker registry managed by Docker, Inc. It is a centralized and public repository for sharing and discovering Docker images globally. Images on Docker Hub are publicly accessible, and anyone can search for, pull, and use images hosted on Docker Hub without authentication.

Official Images: Docker Hub hosts a collection of "official images" that are maintained by Docker, Inc., and are considered reliable and well-maintained. These images cover a wide range of popular software applications, base operating systems, and development tools.

Collaboration Platform: Docker Hub serves as a collaboration platform for the Docker community, allowing users to share their custom images, collaborate on open-source projects, and discover pre-built images for various software stacks.


## Docker Registry:

Generic Term:
"Docker Registry" is a generic term that refers to any server or service that stores and manages Docker images. Docker Hub is one specific implementation of a Docker registry, but there are other registries as well.
When you use the docker pull or docker run commands, Docker pulls the required images from your configured registry. When you use the docker push command, Docker pushes your image to your configured registry.

Private Registries:
Organizations may choose to set up their private Docker registries to store and manage custom images internally. Private registries provide control over access, security, and image distribution within an organization. Docker allows users to use public registries (like Docker Hub) or set up their private registries.
* Set Up a Private Docker Registry on Linux : https://earthly.dev/blog/private-docker-registry/

Docker Trusted Registry (DTR):
Docker Trusted Registry is an enterprise-grade, commercially supported private registry solution provided by Docker, Inc. It offers additional features such as image signing, content trust, and integration with Docker Enterprise.
* A Guide to Docker Private Registry : https://www.baeldung.com/ops/docker-private-registry


## Docker objects :

When you use Docker, you are creating and using images, containers, networks, volumes, plugins, and other objects. This section is a brief overview of some of those objects.

* Images :

An image is a read-only template with instructions for creating a Docker container. Often, an image is based on another image, with some additional customization. For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.
You might create your own images or you might only use those created by others and published in a registry. To build your own image, you create a Dockerfile with a simple syntax for defining the steps needed to create the image and run it. Each instruction in a Dockerfile creates a layer in the image. When you change the Dockerfile and rebuild the image, only those layers which have changed are rebuilt. This is part of what makes images so lightweight, small, and fast, when compared to other virtualization technologies.