**With user: adminazure**
```sh
azure group create <<resource_group_name>>  "West Europe" && azure group deployment create <<resource_group_name>> <<deployment_name>> --template-uri https://raw.githubusercontent.com/dwaiba/centos71/master/centosVMarmTemplate_Gollum.json -p "{\"virtualMachines_CentOSVM_adminPassword\":{\"value\":\"<<yourpassword for user adminazure>>\"},\"publicIPAddresses_dwaicentos_name\":{\"value\":\"<<yourDNSName>>\"}}"
```

