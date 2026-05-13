-- =============================================
-- Proje: Okul Veritabanı Yönetimi (MySQL)
-- Geliştiren: Öykü Nehir Sarıkaya
-- =============================================

-- Veritabanı Oluşturma
DROP DATABASE IF EXISTS Okul;
CREATE DATABASE Okul;
USE Okul;

-- Tablo Yapısı (MySQL Syntax)
CREATE TABLE Ogrenciler (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Ad VARCHAR(50),
    Soyad VARCHAR(50),
    Bolum VARCHAR(100),
    GNO FLOAT
);

-- Veri Girişi
INSERT INTO Ogrenciler (Ad, Soyad, Bolum, GNO) VALUES 
('Deniz', 'Yılmaz', 'Makine Mühendisliği', 3.85),
('Öykü Nehir', 'Sarıkaya', 'Yazılım Mühendisliği', 4.00),
('Meryem', 'Demir', 'Yazılım Mühendisliği', 3.95),
('Melike', 'Torun', 'Yazılım Mühendisliği', 3.50),
('Yağız', 'Çelik', 'Bilgisayar Mühendisliği', 3.20);

-- Güncelleme ve Silme (CRUD)
UPDATE Ogrenciler SET Bolum = 'Yazılım Mühendisliği' WHERE Ad = 'Yağız';
DELETE FROM Ogrenciler WHERE Ad = 'Can';

-- Sonuç
SELECT * FROM Ogrenciler;