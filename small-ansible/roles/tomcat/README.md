Tomcat
=========

For installation of tomcat on linux server using its dependency manager(apt, yum, etc).

Requirements
------------

Linuyx Server with tomcat in dependency repository.

Role Variables
--------------

| Name                | Default | Desc                                     |
|---------------------|---------|------------------------------------------|
| tomcat_package_name | tomcat8 | Default package to be install for tomcat |

Dependencies
------------

NA

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables
passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: tomcat, tomcat_package_name: tomcat8 }

License
-------

BSD

Author Information
------------------

[Varun Palekar](https://github.com/varunpalekar/)
