#machronicle.com Kubernetes Deployment

This repo includes all the container pods necessary to run a wordpress instance for M-A Chronicle

The setup requires three GCE disks
- wordpress-disk (100Gb)
- mysql-disk (30Gb)
- mysql-backup-disk (1G)

## Setup procedure
1. Run mysql-init to copy database files (Copies from old server w/ scp now) - Optional
2. Run wp-init to copy /var/www/html (Copies from old server w/ scp now) - Optional
3. Start mysql-deployment.yml to start up database (Use bash to load sql files from mysql-backup-disk if needed)
4. Start wordpress-deployment to start apache and wordpress
5. Start varnish-deployment to start the caching layer
6. Find the external IP address of the varnish service and add it to the DNS

## General Kuberentes tips
Install the Google Cloud SDK from [here](https://cloud.google.com/sdk/) to get kubectl and gcloud on the command line.

Look [here](http://kubernetes.io/docs/user-guide/) for an overview of kubernetes.
Kubernetes 101 and 202 are good tutorials

Google is great for searching for specific documentation. You should familiarize yourself with Pods, Services and Deployments in additions to learning about the general concept of containers.

[This](https://medium.freecodecamp.com/a-beginner-friendly-introduction-to-containers-vms-and-docker-79a9e3e119b#.670q1cq47) is a good intro to containers.

[This](http://www.oliverelliott.org/article/computing/tut_unix/) is a good intro to unix and the shell/terminal.
1-18, 23, 24, 48
