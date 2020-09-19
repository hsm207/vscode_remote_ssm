# Introduction

This repo is part of my Medium blog post titled [How To Do Remote Development With VS Code Using AWS SSM](https://medium.com/towards-artificial-intelligence/how-to-do-remote-development-with-vs-code-using-aws-ssm-415881d249f3).

It's easier to have everything up and running if you are using VS Code.

# Usage

Assuming you are using VS Code:

1. Open this repo in a container using the [Dockerfile](./Dockerfile) as the image
2. Modify the `devcontainer.json` file to also mount your aws and ssh credentials to `/root/.aws` and `/root/.ssh` respectively
3. Rebuild the container
4. Follow the steps descibed in the blog post
