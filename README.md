# Yapılacaklar Uygulaması

## Genel Bakış
Bu uygulama, Flutter ile geliştirilmiş basit bir yapılacaklar (ToDo) listesidir. Firebase entegrasyonu sayesinde kullanıcıların giriş yapması ve görevlerini kaydetmesi sağlanır.

## Özellikler
- Kullanıcı Girişi:
  - Kayıt Olma
  - Giriş Yapma
- Görev Yönetimi:
  - Görev ekleme, düzenleme ve silme
  - Firebase Realtime Database ile görevlerin anında senkronizasyonu
- Kullanıcı dostu arayüz

## Kurulum
1. Bu depoyu klonlayın:
   ```bash
   git clone https://github.com/yourusername/todo_app.git
   ```
2. Proje dizinine gidin:
   ```bash
   cd todo_app
   ```
3. Gerekli bağımlılıkları yükleyin:
   ```bash
   flutter pub get
   ```
4. Firebase Kurulumu:
   - [Firebase Console](https://console.firebase.google.com/) üzerinden yeni bir proje oluşturun.
   - Android veya iOS uygulamanızı Firebase projenize ekleyin ve `google-services.json` (Android için) veya `GoogleService-Info.plist` (iOS için) dosyasını indirin.
   - Bu dosyayı aşağıdaki dizinlere yerleştirin:
     - Android: `android/app/`
     - iOS: `ios/Runner/`
   - Firebase Console'da Authentication ve Realtime Database özelliklerini etkinleştirin.
5. Uygulamayı çalıştırın:
   ```bash
   flutter run
   ```

## Proje Yapısı
```
lib/
|-- main.dart                # Uygulamanın ana dosyası
|-- home_screen.dart         # Görev yönetimi ekranı
|-- login_screen.dart        # Kullanıcı giriş ekranı
|-- signup_screen.dart       # Kullanıcı kayıt ekranı
```

## Kullanım
1. Uygulamayı başlatın.
2. Giriş yapın ya da yeni bir hesap oluşturun.
3. Görev eklemek için "+" ikonuna dokunun.
4. Görevlerinizi liste halinde görün ve düzenleyin ya da tamamlandı olarak işaretleyin.

## Ekran Görüntüleri
- **Giriş Ekranı**:
  Kullanıcılar e-posta ve şire kullanarak giriş yapabilir.
![giris](https://github.com/user-attachments/assets/c3c545c8-5978-40c4-b810-c6a7e97c4e4b)
  Ana ekran bu şekilde kullanımı basit şekilde kullanıcıya sunuluyor.
![anaekran](https://github.com/user-attachments/assets/5b34d16b-9b0f-4acc-b166-ceb7dab83a56)
Yapılacak görevimizi köşedeki ekleme tuşuna basarak yapabiliriz.
![gorevekleme](https://github.com/user-attachments/assets/60d820e1-5e92-42a5-94aa-f1a201081c09)
Görevlerimizi düzenleyebilir veya silebiliriz.
![düzenleme](https://github.com/user-attachments/assets/34d4ef4c-7f08-4247-98a0-dd0a69030727)
Tamamlanan
![tamamlaman](https://github.com/user-attachments/assets/f01a0869-02a0-4185-b883-1e18614a7d10)
![silme](https://github.com/user-attachments/assets/90373ba6-98c7-404a-8c89-15c4da957760)



- **Ana Sayfa**:
  Kullanıcılar görevlerini görüntüleyebilir ve yeni görevler ekleyebilir.
  ![Ana Sayfa](screenshots/home_screen.png)

## Video Dökümantasyonu
Projenin detaylı anlatımı ve kullanımını gösteren YouTube videosu:
[![Video Bağlantısı](https://img.youtube.com/vi/VIDEO_ID/0.jpg)](https://www.youtube.com/watch?v=VIDEO_ID)

## Katkı
Bu projeye katkı sağlamak isterseniz, bir pull request oluşturabilir ya da herhangi bir sorun için issue açabilirsiniz.

## Lisans
Bu proje MIT Lisansı altında sunulmaktadır. Detaylar için LICENSE dosyasına bakınız.

---

Herhangi bir sorunuz için [e-posta/kullanıcı adınız].



