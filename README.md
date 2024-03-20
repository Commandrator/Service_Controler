# PosgresSql Service Controler
Postgre SQL'de hizmetlerini manuel olarak başlatmanıza yarar.
Harici bir programa ihtiyaç duymaz. Windwos üzerinde servisleri kontorl etmeye yarayan sc komutunu kullanarak durdurma, duraklatma ve başlatma gibi basit kontrolleri bu program üzerinde yapabilirsiniz.

Programa kontrol etmek için tanımladığım 3 servis vardır. bunlar sırasıyla postgresql-x64-14, pgagent-pg14 ve PEMHTTPD'dir.

servisleri kontrol edebilmek için terminal(cmd)i yönetici olarrak başltmalısınız. Bunun nedeni sc komutu bizden yapmak istediğimiz işlem için izin istemesinden kaynaklanmaktadır.

Kendiniz harici olarak programa bir servis dahil etmek isterseniz @echo off yazan komutun altına set "item[istenilen_değer]=<servis_adı>" olacak şekilde tanımlama yapın.
Daha sonra :Fonksiyon yazan ayrıma giderek "sc %işlem% %item[istenilen_değer]%" olacak şekilde eklemenizi yapabilirsiniz.
