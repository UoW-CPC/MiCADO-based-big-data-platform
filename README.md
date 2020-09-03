# MiCADO-based Big Data Platform
This repository is a use-case of using MiCADO to deploy big data clusters using the open-source Apache tools. Please note that, it is a proof-of-concept and is NOT production ready.

### Note
* Please note that the **v0.9.1** branch uses the new MiCADO type **tosca.nodes.MiCADO.Container.Application.Docker.StatefulSet** and is only compatible with MiCADO version **above 0.9**. However, the master version is compitable with MiCADO 0.9.1 and below.

* Based on MiCADO V0.9, you can only specify volume_size of a virtual machine using Terraform (not supported by Occopus).

## Deploying the big data custer 
The following steps shows all the required steps to create and access the MiCADO-based big data Hadoop cluster.

1. Make a copy of the TOSCA-based application definition file (e.g., **bdp-hadoop-core-coupled-emptydir.yaml**, or **bdp-decoupled-compute-and-storage.yaml**, etc.), and name it **bdp.yaml**.
2. Fill in the requested fields beginning with **ADD_YOUR_...** , which depends on your chosen cloud.
3. Update the parameter file, called **_settings**. You need the ip address for the MiCADO master and should name the deployment by setting the APP_ID. The FRONTEND_NAME parameter must match the name given to the application in TOSCA (default: bdp). The APP_ID parameter can not contain any underscores ( _ ). Finally, You should also change the MICADO_PORT, SSL_USER, and SSL_PASS information if they are different from the default.
4. Edit the 1-submit-tosca-wordpress.sh to change the defualt values for the input parameters (e.g., **min_workers, max_workers, min_datanodes**).
5. Run `1-submit-tosca-wordpress.sh` to create the specified big data cluster.
6. Run `2-list-apps.sh` to see currently running applications and their IDs, as well as the nodePort open on the host for accessing the HTTP service.
7. To access the data nodes of the created big data Hadoop cluster, you can use <micadomaster_ip>:30010 or <worker_node_ip>:30010). For the node managers, you can use the port 30040.
8. Run `3-undeploy-bdp.sh` to undeploy the entire big data cluster. Important: back up your data if required before undeploying the cluster.





