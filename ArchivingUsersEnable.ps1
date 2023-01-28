<#
.NOTE
Bu PowerShell betiği kullanılarak birden fazla Exchange Online kullanıcısı için Online Arşivleme etkinleştirme ve otomatik genişleyen arşivi tetikleme işlemlerini otomatize edebilirsiniz. 
#>

Write-Host "Mehmet PATLAKYIGIT | Office Apps & Services MVP" -ForegroundColor blue
Write-Host "https://www.parlakyigit.net/" -ForegroundColor blue
Write-Host "Twitter:@mparlakyigit" -ForegroundColor blue

Set-ExecutionPolicy Unrestricted
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline
Write-Host "Exchange Online Servisine Bağlandı." -ForegroundColor Green

$ArchivingUsersEnable= "ahmet@mparlakyigit.onmicrosoft.com","azureaip@mparlakyigit.onmicrosoft.com"
#Bu kısınmda "kullanici@mdomainname.com", belirtildiğinde ilgili kullanıcılar için online arşivleme etkinleştirilir. ("",) kullanıalarak kullanıcı sayınıza göre çoğaltabilirsiniz.
foreach ($UsersEnable in $ArchivingUsersEnable)

 {
 
 #Belirlenen Kullanııclar için Online arşivlemeyi etkinleştirir.
 enable-Mailbox -Identity $UsersEnable -Archive

 #Belirlenen kullanıcılar için otomatik genişleyen arşivi etkinleştirir.
 Enable-Mailbox $UsersEnable -AutoExpandingArchive
 
 }

#Secenek aktifleştirildiğinde ilgili kullanıcı için arşivlemeyi kapatır. 
#Disable-Mailbox -Identity anlasma@parlakyigit.net -Archive


