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