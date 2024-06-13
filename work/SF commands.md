- deploy package.xml to default org
```shell
sfdx force:source:deploy -x path/to/package.xml
``` 
- install git delta plugin
```shell
sfdx plugins:install sfdx-git-delta
```
- use git delta plugin
```shell
sfdx sgd:source:delta --to origin/Partial  --from origin/master --output "."
```
- deployment
```shell
sfdx force:source:deploy -m 'ApexClass:DC_ConsoleSidebarController, ApexClass: DC_ConsoleSidebarController_Test' -l RunSpecifiedTests -r DC_ConsoleSidebarController_Test
```


