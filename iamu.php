<?php
	
	/**
	 *
	 * IAMU
	 * Dünyanın en basit database frameworkü
	 *
	 * @author Uğur KILCI
	 * @web ugurklc.blogspot.com
	 *
	 * version 1.0
	 *
	 */

	/**
	 *
	 * Sadece tek fonsiyonla database işlemlerini kolayca gerçekleştirin.
	 * Not: Şuan sadece dinamik veri bağlantısı ve basit veri çekme işlemlerini gerçekleştirmektedir.
	 * Not2: Select işlemi daha pratikleşecektir.
	 * Not3: Geliştirilmeye devam edecektir. Takipte kalın!
	 *
	 * @param integer $type yapacağınız işlemin tipidir. Örneğin, veri bağlantısı için :config
	 *
	 * Eğer $type :config ise{
	 *  @param integer $one host adı
	 *  @param integer $two database adı
	 *  @param integer $three charset değeri
	 *  @param integer $four root adı
	 *  @param integer $five parola
	 * }
	 *
	 * Eğer $type :select ise{
	 *  @param integer $one tablo adı
	 *  @param integer $two where
	 *  @param integer $three sütunlar
	 *  @param integer $four değişkenler
	 *  @param integer $five boş bırakınız
	 * }
	 *
	 * @param $select_ ekrana yazı yazdır.
	 *
	 */

	function iamu($type, $one, $two, $three, $four, $five){
		global $db; // db değişkenini her yerde kullanabiliriz.

		if ($type == ":config") { // eğer config'se
			try{
				$db = new PDO("mysql:host=$one;dbname=$two;charset=$three;",$four, $five);
			}catch(PDOExeption $error){
				echo $error->getMessage();
			}
		}

		elseif ($type == ":select") { // eğer select'se
			global $select_; // select_ değişkenini her yerde kullanabiliriz.

			$select = $db->prepare("SELECT * FROM $one $two $three");
	        $select->execute(array(
	            $four
	        ));
	        $select_ = $select->fetch(PDO::FETCH_ASSOC);
		}
	}