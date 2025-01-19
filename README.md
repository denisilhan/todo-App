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

### Giriş Ekranı
Kullanıcılar e-posta ve şifre kullanarak giriş yapabilir.
<p align="center">
  <img src="screenshots/login_screen.png" alt="Giriş Ekranı" width="500"/>
</p>

### Ana Sayfa
Kullanıcılar görevlerini görüntüleyebilir ve yeni görevler ekleyebilir.
<p align="center">
  <img src="![giris](https://github.com/user-attachments/assets/a8397719-ef34-434e-9d7e-34725da52dba)
" alt="Ana Sayfa" width="500"/>
</p>

### Görev Ekleme
Görev eklemek için sağ alt köşedeki "+" ikonuna tıklayın.
<p align="center">
  <img src="screenshots/add_task.png" alt="Görev Ekleme" width="500"/>
</p>

### Görev Düzenleme
Eklenen görevleri düzenleyebilir veya silebilirsiniz.
<p align="center">
  <img src="screenshots/edit_task.png" alt="Görev Düzenleme" width="500"/>
</p>

### Tamamlanan Görevler
Tamamlanan görevleri işaretleyerek listede ayırt edebilirsiniz.
<p align="center">
  <img src="screenshots/completed_task.png" alt="Tamamlanan Görevler" width="500"/>
</p>

## Video Dökümantasyonu
Projenin detaylı anlatımı ve kullanımını gösteren YouTube videosu:
<p align="center">
  <a href="https://www.youtube.com/watch?v=VIDEO_ID">
    <img src="https://img.youtube.com/vi/VIDEO_ID/0.jpg" alt="Video Bağlantısı" width="600"/>
  </a>
</p>

## Katkı
Bu projeye katkı sağlayanlar 
Metin Mutlu
Savaş Şahin 
Deniz İlhan 



