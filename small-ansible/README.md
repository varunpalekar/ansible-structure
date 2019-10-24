Introduction
============

Sample of folder structure which you can follow for docker and ansible.

```doc
│   ansible.cfg
│   deploy.yml                              -> A sample playbook
│   dev-hosts.ini                           -> Sample inventory file for dev environment
│   README.md
│   requirements.yml                        -> Sample ansible requirements role downloaded from other sources
│   stage-hosts.ini                         -> Sample inventory file for stage environment
│   Vagrantfile                             -> Vagrantfile to create local VM for testing
├───env_vars
│   |   dev.yml                             -> Variables which will override common variable but only for dev environment
|   |   stage.yml                           -> Variables which will override common variable but only for stage environment
├───group_vars
│   │       all.yml                         -> All common variables
|   |       tomcat.yml                      -> File container host group variable for tomcat group only
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

1. Having separate inventory file for each environment remove confusion and decrease chance to run playbook to different environment
2. Having simple variables for environment variables where you can override env specific variables, easy to remember and maintain
3. Simple structure easy to understand and thus easy to maintain

Limitations of using above ansible folder structure
---------------------------------------------------

1. This folder structure not able to handle complex scenario in which we need to declare separate group_vars according to environment also. This is very special requirement which needed in large and complex infrastructure.

Author
------

[Varun Palekar](https://github.com/varunpalekar)