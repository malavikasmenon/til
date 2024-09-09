- Azure databricks is made up of 3 components
    - Apache Spark (open source)
    - Databricks (company created by founders of spark to make managing spark more easier)
    - Azure (which provides Databricks as a first party service)

- To use spark effectively, we need to spin up clusters, manage security, use 3rd party libraries etc. This is where Databricks comes in, it makes handling spark much more easier. We can spin up clusters for distributed computing with a few clicks. 

- Databricks also offers Spark runtime which is highly optimized and maybe 5x faster than Vanilla Apache Spark.

- All 3 major cloud providers - Azure, GCP, AWS has Databricks integration. But Azure is supposed to offer a deeper intergration and offers it as a first party service, also with unified billing and support. 

# Databricks Clusters

Cluster = collection of virtual machines with a driver node and worker nodes. 

With clusters we can treat the group of computers as a single compute engine via Driver node

Databricks offers 2 types of clusters
- all purpose
    - can be created manually
    - best for interactive, ad-hoc tasks
    - more expensive
    - is persistent
- job cluster
    - created when a job is run and terminated when it ends
    - can be created as part of the databricks workflow jobs
    - better for repeated production tasks
    - cheaper

Options for cluster configuration
- Single/Multi Node
- Access Mode: Single user/ shared access etc
- Databricks Runtime - Normal runtime, ML runtime, photon runtime, runtime light
- Auto termination - after how many minutes cluster should be shut down
- Auto scaling - specify min and max number of nodes
- Cluster VM Type/Size
- Cluster policy: Makes interface simpler as it restrics options according to various policies.

Cluster pools are used to reduce cluster setting up time. It has vms that are kept aside previously which can be allocated faster. Min and max number of vms are used.

# Databricks Notebooks
- Notebook - a collection of cells that run commands on a databricks cluster
- While creating a notebook, you need to attach it to a cluster where the commands can run
- One notebook can have multiple languages from python, scala, sql, R
- %md can be used for documenting in Markdown
- %fs & %sh are other magic commands that can be used for accessing the filesystem and shell
- few utilities that can used in notebooks
    - file system
    - secrets - vault etc
    - widget utilities - pass params to notebooks to make a notebook reusable
    - notebook workflow utilities - to chain different notebooks together and use one from the other
- dbutils package is quite helpful, you can access it from all languages like python, scala, R. And write code programmatically, for example, file system can be accessed by dbutils.fs
- for adhoc tasks we can use magic commands like %fs, but dbutils.fs can be used in jobs or when we're accessing fs methods from within a program.

# Azure Data Lake
Various forms of authentication available for Azure Data Lake
- session scoped: only for the duration of the session in a given notebook
- cluster scoped: at a cluster level, for any notebooks attached to the cluster
- Azure access directory (AAD) credential
- Unity catalog

Containers can be thought of as equivalent to folders/directories

### Authentication using access keys
- When accessing data in ADL from databricks, we need to give one of the 2 access keys to Databricks so it can read the data. This is done by setting up a spark configuration in databricks notebook
- ABFS driver is used to access data from ADL. use dbutils.fs
- access keys give full access, so this is not ideal in cases where we want to restrict access to certain users (eg give only read only access). This is when shared access signature tokens come into picture 

### Authenticate using Shared Access Signature (SAS) tokens
SAS tokens provide more fine grained access to your storage account wrt type of files, permissions, ip address, time period of access etc.


### Authenticate using Service Principle
- way to go for automated databricks jobs and ci/cd pipelines as they provide better security and monitoring
- also called Azure AD (Active Directory) application
- Microsoft entra id in azure portal, client id and tenant id needed from there
- steps to follow
    1. Register azure ad application
    2. Generate secret password for the application
    3. set spark config with client_id, client_secret, tenant_id
    4. Assign role 'storage blob data contributor' to data lake

All 3 above methods are session based authentication, we add keys within notebook

### Cluster based authentication
- when cluster is created, access to dl is secured, all notebooks connected to the cluster can access the dl
- we can edit spark config at the cluster level, add the access key and then restart the cluster

### AAD Credential Passthrough
- used in cases when different users require different levels of access

### Key Vault and Secret Scope
- Databricks Secret Scope + Azure Key Vault can be used to secure secrets
- Azure Key Vault -> Databricks Secret Scope -> Clusters/Notebooks/Jobs
- dbutils.secrets can be used in notebooks
- db secret scope url = homeurl/#secrets/createScope

# Databricks File System (DBFS) and Databricks Mounts