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

## Run Ansible playbooks

```

    ansible-playbook vmware.yml -i hosts --ask-sudo-pass

```

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

