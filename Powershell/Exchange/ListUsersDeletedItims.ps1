Get-Mailbox | Get-MailboxStatistics | select Displayname,TotalItemSize,TotalDeletedItemSize | Export-Csv c:\users-deleted.csv