# course_ansible



sudo su 
passwd ubuntu


ssh-copy-id -i ~/.ssh/id_rsa.pub ubuntu@ec2-54-242-255-62.compute-1.amazonaws.com



sudo vi /etc/ansible/hosts
[test]
ec2-54-242-255-62.compute-1.amazonaws.com ansible_ssh_user=ubuntu




ansible test -m ping
ansible test -m shell -a "echo 'hola mundo'"



