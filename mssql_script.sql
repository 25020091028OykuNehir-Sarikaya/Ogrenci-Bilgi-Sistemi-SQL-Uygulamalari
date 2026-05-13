-- =============================================
-- Proje: Okul Veritabanı Yönetimi (MSSQL)
-- Geliştiren: Öykü Nehir Sarıkaya
-- =============================================

-- Veritabanı Oluşturma
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'Okul') DROP DATABASE Okul;
GO
CREATE DATABASE Okul;
GO
USE Okul;
GO

-- Tablo Yapısı (T-SQL)
CREATE TABLE Ogrenciler (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(50),
    Soyad NVARCHAR(50),
    Bolum NVARCHAR(100),
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