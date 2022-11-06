#List the quota on mailbox and the current size
get-mailbox -server "servername" -ResultSize unlimited |
 Where {$_.UseDatabaseQuotaDefaults -eq $false} |
   ft DisplayName,IssueWarningQuota,ProhibitSendQuota,@{label="TotalItemSize(MB)";expression={(get-mailboxstatistics $_).TotalItemSize.Value.ToMB()}}