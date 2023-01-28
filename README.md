# Exchange Online Archiving Users Enable
Bu PowerShell betiğini kullanılarak birden fazla Exchange Online kullanıcısı için Online Arşivleme etkinleştirme ve otomatik genişleyen arşivi tetikleme işlemlerini otomatize edebilirsiniz. 

![0](https://user-images.githubusercontent.com/53214224/215292236-0ef3c9da-ae8c-4b7b-9faf-bfc4d369f4d0.png)

- Bu kısınmda "kullanici@mdomainname.com", belirtildiğinde ilgili kullanıcılar için online arşivleme etkinleştirilir. ("",) kullanıalarak kullanıcı sayınıza göre çoğaltabilirsiniz.

![1](https://user-images.githubusercontent.com/53214224/215292252-2c182752-4d93-4231-9dd6-97553717f36d.png)

- İlk adımda PowerShell uygulamamızı yönetici olarak çalıştıralım. Hemen ardından cd yazarak ArchivingUsersEnable.ps1 dosyasını kaydettiğimiz dizine geçelim.
- ikinci adımda ise .\ArchivingUsersEnable.ps1 dosyasını çalıştıralım.
- Üçüncü adım olan son adımda ise Global admin ve Exchange Administrator yetkisine sahip bir kullanıcı ile Office 365 PowerShell bağlantısını sağlayalım.

![2](https://user-images.githubusercontent.com/53214224/215292260-39050635-bab3-4b34-9556-398eb26e56da.png)

Bu ekranı gördüğünüze göre belirlediğiniz kullanıcılarda online arşiv etkinleşmiş ve otomatik genişleyen arşiv etkin olmuştur. 
