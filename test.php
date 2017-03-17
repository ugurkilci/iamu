<?php

	include("iamu.php"); // iamu.php dosyasını sisteme eklendi

	iamu(":config", "localhost", "iamu", "utf8", "root", ""); // Veri Bağlantısı
	// :config, host, dbname, charset, root, pass, boş

	iamu(":select", "tablo", "where", "id=?", "1", ""); // Veri Çekme
	// :select, tablo, where, sütunlar, değişkenler, boş

	iamu(":select_", "deneme", "ttwo", null, null, null); // Veri Yazdır
	// :select_, temsili ad, sütun adı, (boş)
