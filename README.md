Introduction
============

Sample of folder structure which you can follow for docker and ansible. 

```
├───ansible                                     -> folder contains all stuff related to ansible
│   │   ansible.cfg                             ->
│   │   deploy-api.yml                          -> A sample playbook
│   │   dev-hosts                               -> Sample inventory file for dev environment
│   │   stage-hosts                             -> Sample inventory file for stage environment
│   │   undeploy-api.yml                        -> A sample playbook
│   │
│   ├───group_vars
│   │       all.yml                             -> All common variables
|   |       api.yml                             -> File container host group variable for api group only
│   │
│   └───vars
│           dev.yml                             -> Variables which will override common variable but only for dev environment
│           stage.yml                           -> Variables which will override common variable but only for stage environment
│
└───docker                                      -> docker folder contains all things required for docker
    │   Dockerfile                              -> Default Dockerfile
    │
    └───templates                               -> a folder which all files/folders which need to be replaced in Docker container at root by "COPY ./templates /"
        │   run.sh                              -> Default CMD which is set
        │   touch
        │
        ├───javaagent                           -> Other files/folder if required
        │       tomcat.yml
        │
        └───usr                                 -> Other files/folder if required
            └───local
                └───tomcat
                    └───conf
                            server.xml
```

Profit of using above ansible folder structure
==============================================

1. Having seperate inventory file for each environment remove confusion and decrease chance to run playbook to different environment
2. Having simple variables for environment variables where you can override env specific variables, easy to remember and maintain
3. Simple structure easy to understand and thus easy to maintain

Profit of using above docker folder structure
=============================================

1. Defined some standard of having files/folder for docker so that every one knows what thing we are placed and for what. 
2. As all required files are placed in `templates` according to be replaced at container root, its easy to understand where files placed in container just by seeing folder structure, no need to read and understand Dockerfile. 
3. Always has a custom run.sh for CMD so no confusion and now easy to override CMD in a file.