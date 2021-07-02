# course_ansible

Change ubuntu user password
```
sudo su 
passwd ubuntu
```
Copy pub

```
ssh-copy-id -i ~/.ssh/id_rsa.pub ubuntu@ip
```
Add to list of hosts
```
sudo vi /etc/ansible/hosts
```
Add with a label
```
[test]
ip ansible_ssh_user=ubuntu
```

Test
```
ansible test -m ping
ansible test -m shell -a "echo 'hola mundo'"
```


