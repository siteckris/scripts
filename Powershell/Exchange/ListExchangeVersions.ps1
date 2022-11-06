#List the exchangeservers and their version

Get-ExchangeServer | Format-List Name, Edition, AdminDisplayVersion