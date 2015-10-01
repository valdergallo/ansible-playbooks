# Ansible Playbooks

## Common Roles

- Add my default configuration for VIM, Git and Screen
- Install default packages to compile

## Selenium Roles

- Download Selenium version 2.47
- Configure selenium on start
- Up selenium server in port 4444
- Install Vxfb virtual server
- Configure vxfb on start
- Configure vnc11x to conect in vxfb
- Configure Firefox Default Profile to *zina*
- Configure Fluxbox
- Configure Firewalld to open doors:
    - 9002 (supervisor)
    - 5900 (vnc)
    - 4444 (selenium server)
    - 6040 (Xvfb)


## Run Ansible playbooks

```

    pip install ansible
    ansible-playbook vmware.yml -i hosts --ask-sudo-pass

```

## Supervisor Site Admin
 - [http://vmware:9002/](http://vmware:9002/) (centos server)
 - User: nokia/nokia

## Selenium Site Admin
 - [http://vmware:4444/wd/hub/static/resource/hub.html](http://vmware:4444/wd/hub/static/resource/hub.html) (centos server)

## Playbooks

- main.yml (Run all roles for all hosts)
- vmware.yml (Run all roles for vmware host)

## Hosts

- hosts (Default hosts)
- hosts.local (Development hosts)

## To developement

- READ the documentation !!! [https://docs.ansible.com/](https://docs.ansible.com/)
- Copy hosts to hosts.local
- Edit your hosts.local and update vmware IP

```

    [localhost]
    127.0.0.1

    [vmware]
    192.168.153.130  # <-- update here

```

- You can change the vmware.yml to remove or add more roles
- After all run you playbook

```

    ansible-playbook vmware.yml -i hosts.local --ask-sudo-pass

```

