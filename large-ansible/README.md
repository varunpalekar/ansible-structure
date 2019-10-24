Introduction
============

Sample of folder structure which you can follow for docker and ansible.

```doc
│   ansible.cfg
│   deploy.yml                              -> A sample playbook
│   README.md
│   requirements.yml                        -> Sample ansible requirements role downloaded from other sources
│   Vagrantfile                             -> Vagrantfile to create local VM for testing
├───inventories                             -> Inventory folder for different env
│   ├───dev                                 -> Contains inventory and group vars for dev env
│   │   │   hosts.ini
│   │   └───group_vars
│   │           all.yml
│   │           tomcat.yml
│   ├───stage                               -> Contains inventory and group vars for stage env
│   │   │   hosts.ini
│   │   └───group_vars
│   │           all.yml
│   │           tomcat.yml
│   └───vagrant                             -> Contains inventory and group vars for vagrant env
│       │   hosts.ini
│       └───group_vars
│               all.yml
│               tomcat.yml
├───roles                                   -> Role folder contains multiple roles
│   ├───base
│   └───tomcat
├───test                                    -> Having testing using tools like inspec, etc.
│   └───integration
│       └───default
└───vagrant                                 -> Vagrant folder contains any files needed for vagrant
```

Profit of using above ansible folder structure
----------------------------------------------

1. Separate folders contains inventory file and group folders for different env leads to have different hosts vars and group vars for different env.

Limitations of using above ansible folder structure
---------------------------------------------------

1. Need to handle more files
