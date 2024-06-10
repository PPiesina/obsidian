- deploy package.xml to default org
```
sfdx force:source:deploy -x path/to/package.xml
``` 
- install git delta plugin
```
sfdx plugins:install sfdx-git-delta
```
- use git delta plugin
```
sfdx sgd:source:delta --to origin/Partial  --from origin/master --output "."
```




