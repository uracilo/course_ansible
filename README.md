# course_ansible

## Create a AMI
ansible-doc -l 

Change ubuntu user password
```
sudo su 
passwd ubuntu

vi /etc/ssh/sshd_config
PasswordAuthentication no
PasswordAuthentication yes
```

Copy pub
```
ssh-copy-id -i ~/.ssh/id_rsa.pub ubuntu@ip
```

## start with enviroment 
```
terraform plan 
terraform apply 
```

Add to list of hosts
```
sudo vi /etc/ansible/hosts
```
Add with a label
```
[test]
ip ansible_ssh_user=ubuntu
[development]
ip ansible_ssh_user=ubuntu

```

Test
```
ansible test -m ping
ansible test -m shell -a "echo 'hola mundo'"
ansible test:development -m ping
ansible test:development -m shell -a "echo 'hola mundo'"
```


## Using playbook 

playbook.yml
```
---
---
# This playbook is use to test servers
- name: Test
  hosts: all
  remote_user: ubuntu

  tasks:
  - name: Ping
    ping:
    
  - name: Print debug message
    debug:
      msg: Hello, world!
```



### Clean proyect
```
terraform destroy
```

https://galaxy.ansible.com/home


