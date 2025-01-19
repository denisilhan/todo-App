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
  ![Giriş Ekranı](screenshots/login_screen.png)![WhatsApp Görsel 2025-01-19 saat 17 14 10_a627c0ef](https://github.com/user-attachments/assets/e35a5172-51c9-4878-9f30-63aa7a2dc18c)
![WhatsApp Görsel 2025-01-19 saat 17 14 00_5d261b30](https://github.com/user-attachments/assets/e0d1ff93-d16a-4ae9-9b06-7e30ba93fb47)
![WhatsApp Görsel 2025-01-19 saat 17 14 10_25da0e3b](https://github.com/user-attachments/assets/dc4523f8-899c-437a-8ae3-afa2a73d7bf1)
![WhatsApp Görsel 2025-01-19 saat 17 14 00_f13a6a8a](https://github.com/user-attachments/assets/8cef411d-93e0-46e2-bc42-c14025c1048a)
![WhatsApp Görsel 2025-01-19 saat 18 28 00_a32498f5](https://github.com/user-attachments/assets/20a81f1c-0c44-4352-8188-f111e27dac2c)
![WhatsApp Görsel 2025-01-19 saat 17 14 00_7e5b09c5](https://github.com/user-attachments/assets/80887f39-0229-48c6-8dd2-7399eb775ac4)


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



