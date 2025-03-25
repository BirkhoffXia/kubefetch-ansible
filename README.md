# kubefetch-ansible
Use ansible to automatic install k8s v1.21.0  

```shell
site-all.yml  
    site-init-hosts.yml
        role: set-default/main.yml  
        role: init-host/main.yml  
            sysctl.yml  
            kubelet.yml  
    site-docker.yml  
	role: set-default  
        role: docker  
    site-kubefetch.yml  
	role: set-default  
  	role: kfh-init
```
