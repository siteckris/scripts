#Get lst of groups a user is member off
Get-ADPrincipalGroupMembership -Username

#List domain wide FSMO Roles
Get-ADForest | Select-object DomainNamingMaster,SchemaMaster | FormatList

#List Fores Wide FSMO Roles
Get-ADDomain | Slect-Object InfrastructureMaster,PDCEmulator,RIDMaster | Format-List

#Move an FSMO Role
Move-ADDirectoryServerOperationRole - Identity "dc2" -OperationMasterRole PDCEmulator

#Seize en FSMO Role
Move-ADDirectoryServerOperationRole - Identity "dc2" -OperationMasterRole PDCEmulator -Force
#if you seize a role the server you seize it from, should never go online again.

