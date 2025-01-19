# Yapılacaklar Uygulaması

## Genel Bakış
Bu uygulama, Flutter ile geliştirilmiş basit bir yapılacaklar (ToDo) listesidir. Firebase Authentication ve Realtime Database entegrasyonu sayesinde kullanıcıların giriş yapması ve görevlerini kaydetmesi sağlanır.

## Özellikler
- Kullanıcı Girişi:
  - Kayıt Olma
  - Giriş Yapma
  - Oturum Durumu Kontrolü
- Görev Yönetimi:
  - Görev ekleme, düzenleme ve silme
  - Firebase Realtime Database ile görevlerin anında senkronizasyonu
- Material Design tabanlı kullanıcı arayüzü

## Kurulum
1. Bu depoyu klonlayın:
   ```bash
   git clone https://github.com/denisilhan/todo_app.git
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
   - Android uygulamanızı Firebase projenize ekleyin ve `google-services.json` dosyasını indirin.
   - Bu dosyayı aşağıdaki dizinlere yerleştirin:
     - Android: `android/app/`
   - Firebase Console'da Authentication ve Realtime Database özelliklerini etkinleştirin.
5. Uygulamayı çalıştırın:
   ```bash
   flutter run
   ```

## Proje Yapısı
```
lib/
|-- main.dart              # Uygulamanın ana dosyası
|-- Ana_ekran.dart         # Ana uygulama ekranı
|-- giris_ekran.dart       # Kullanıcı giriş ekranı
|-- kayit_ekran.dart       # Kullanıcı kayıt ekranı
```

## Bağımlılıklar
```yaml
dependencies:
  firebase_core: ^latest_version
  firebase_auth: ^latest_version
  firebase_database: ^latest_version
  flutter:
    sdk: flutter
```
## Kullanım
1. Uygulamayı başlatın.
2. Giriş yapın ya da yeni bir hesap oluşturun.
3. Görev eklemek için "+" ikonuna dokunun.
4. Görevlerinizi liste halinde görün ve düzenleyin ya da tamamlandı olarak işaretleyin.

## Ekran Görüntüleri

### Giriş Ekranı
Kullanıcılar e-posta ve şifre kullanarak giriş yapabilir.
![giris](https://github.com/user-attachments/assets/e3646f9d-1957-44e7-bf5a-ca5ed019aced)

### Ana Sayfa
Kullanıcılar görevlerini görüntüleyebilir ve yeni görevler ekleyebilir.

![anaekran](https://github.com/user-attachments/assets/d03239a6-13a1-4335-9726-73e9431beac9)

### Görev Ekleme
Görev eklemek için sağ alt köşedeki "+" ikonuna tıklayın.
![gorevekleme](https://github.com/user-attachments/assets/78448488-172a-49e8-a0dc-e0db8e4cc98a)

### Görevi Tamamlama
Tamamlanan görevi işaretleme
![yesil](https://github.com/user-attachments/assets/89e81a1a-e1a8-4a57-92b8-85c3ccf00c6b)

### Görev Düzenleme
Eklenen görevleri düzenleyebilir veya silebilirsiniz.
 ![düzenleme](https://github.com/user-attachments/assets/f65c33b5-528e-40a9-9d0d-5a6e4e143bea)

### Tamamlanan Görevler
Tamamlanan görevleri işaretleyerek listede ayırt edebilirsiniz.

![tamamlaman](https://github.com/user-attachments/assets/fbe34b70-38b8-42bb-848e-a8dc9e1816ac)

### Görevleri Silme
Yapılan görevlerin silinmesi
![silme](https://github.com/user-attachments/assets/766dfcd8-ce45-4362-9f38-7a156470372b)


## Video Dökümantasyonu

## Önemli Notlar
- Uygulama Firebase Authentication kullanarak oturum durumunu kontrol eder
- Tema rengi olarak indigo kullanılmıştır
- Debug banner kapalıdır

## Katkı
Projeye katkı sağlayanlar:
- Metin Mutlu
- Savaş Şahin 
- Deniz İlhan 
