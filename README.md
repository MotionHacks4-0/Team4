<p align="center">
  <img src="assets/images/logo.png" alt="EcoTrip Logo" width="300"/>
</p>

# ♻️ EcoTrip - Cleaner Tourism Starts With You

**EcoTrip** adalah aplikasi berbasis Flutter yang menggabungkan aktivitas pelestarian lingkungan dengan pengalaman wisata. Pengguna dapat menyetorkan sampah, mendapatkan poin, dan menukarkannya dengan produk menarik. Aplikasi ini juga menyediakan fitur volunteering, informasi pariwisata, edukasi lingkungan, serta profil pengguna yang terintegrasi.

---

## 🚀 Fitur Unggulan

| Fitur                      | Deskripsi                                                                                                                       |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| ♻️ **Setor Sampah**        | Pengguna dapat menginput berat sampah (gram) yang akan diverifikasi petugas sebelum mendapatkan poin.                           |
| 🧮 **Poin & Total Sampah** | Sistem poin otomatis bertambah saat setor diverifikasi, dan berkurang saat ditukar. Total gram tersimpan di profil pengguna.    |
| 🛒 **Tukar Poin**          | Tukarkan poin dengan berbagai produk yang tersedia di lokasi wisata. Search bar untuk memfilter produk berdasarkan nama/lokasi. |
| 📍 **Volunteering**        | Temukan program relawan berdasarkan nama atau lokasi menggunakan pencarian dinamis.                                             |
| 🗺️ **Pariwisata**          | Daftar tempat wisata dengan fasilitas, kontak customer service, dan info penting.                                               |
| 📘 **Informasi Edukatif**  | Buku panduan kategori dan cara penyimpanan sampah.                                                                              |
| 👤 **Profil Dinamis**      | Edit nama, ID pengguna, bio, no telepon, tanggal lahir, dan jenis kelamin. Data disimpan secara lokal menggunakan Hive.         |
| 🔐 **Login/Logout**        | Menggunakan Firebase Authentication untuk keamanan pengguna.                                                                    |
| 🧠 **State Management**    | Menggunakan GetX untuk pengaturan status yang efisien dan terstruktur.                                                          |

---

## 🛠️ Tech Stack

- **Flutter**: UI Framework
- **Firebase Authentication** untuk login/logout
- **Hive**: Penyimpanan lokal (data profil & histori pengguna)
- **GetX**: State management, routing, dan dependency injection
- **Get CLI**: Struktur folder modular berbasis model-view-controller (MVC)
- **Design System** reusable (tersedia di `app_style.dart` dan `widgets/`)
- **Responsive UI** berdasarkan desain Figma tim UI/UX

---

## 🧩 Design System & Reusability

✅ Aplikasi dibangun dengan _design system_ konsisten yang berada di:

- `lib/app/utils/app_style.dart`: Warna, tipografi, dan komponen visual global
- `lib/app/widgets`: Komponen UI seperti `custom_button`, `custom_search_bar`, `custom_textform`, dll.

🎯 Semua komponen bersifat **reusable** dan digunakan lintas modul:

- Search bar digunakan di fitur Volunteer & Tukar Poin
- Komponen `custom_button` dan `custom_textform` digunakan di berbagai halaman form

---

## 📂 Struktur Proyek (Get CLI)

```
lib/
├── app/
│   ├── data/                # Model (mis. volunteer_model, pariwisata_model)
│   ├── modules/             # Fitur modular (home, setor_sampah, volunteer, dst)
│   ├── routes/              # Routing: app_pages.dart, app_routes.dart
│   ├── services/            # Auth service, controller logika bisnis
│   ├── utils/               # Style dan theme global
│   ├── widgets/             # Reusable UI components
├── main.dart                # Inisialisasi Firebase, Hive, dan controller global
```

---

## 📦 Integrasi & Logika

- **State Terkoneksi Antar Halaman**: Poin dan total gram terhubung antara halaman Home, Setor Sampah, dan Profile dengan penggunaan controller `HomeController`, `SetorSampahController`, dan `ProfileController`.
- **Edit Profil Real-time**: Perubahan data langsung tercermin di homepage.
- **Sistem Verifikasi Setor**: Setelah input, pengguna mendapat notifikasi “Menunggu Verifikasi” sebelum poin masuk.

---

## 🧪 Validasi Penilaian

| Kriteria                    | Keterangan                                                                                                                                                                                                                     |
|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ✅ Implementasi Model       | - `models/` → Berisi definisi model seperti `pariwisata_model.dart`, `volunteer_model.dart`, dan class model lainnya untuk merepresentasikan data nyata dalam bentuk objek. <br> - `controllers/` → Mengelola logika dan manipulasi data model, serta menjadi jembatan antara view dan model. <br> - `views/` → Menampilkan dan memungkinkan interaksi pengguna terhadap data model secara dinamis melalui UI. <br> - Hive → Menyimpan dan mengambil data model secara lokal dalam bentuk JSON, seperti data profil pengguna dan total sampah. |
| ✅ UI/UX dari Figma         | Telah diterapkan sesuai desain sistem yang terdapat pada file `utils/app_style.dart`, memastikan kesesuaian dengan desain yang dirancang tim UI/UX.                                                                           |
| ✅ Firebase / Local Storage | Menggunakan **Firebase Authentication** untuk login/logout, dan **Hive** untuk penyimpanan data profil pengguna secara lokal.                                                                                                 |
| ✅ State Management         | Menggunakan **GetX** untuk seluruh fitur, memastikan pengelolaan state yang efisien dan terstruktur dengan pendekatan Get CLI.                                                                                                |
| ✅ Konsistensi Komponen     | Menggunakan **Custom Widgets** secara konsisten dan reusable lintas fitur yang ditempatkan di folder `widgets/`, seperti form input, button, tile, dan search bar.                                                            |
| ✅ Anti-Plagiarisme         | Seluruh kode dikembangkan secara **mandiri dan modular**, tanpa menyalin dari proyek luar, dengan mengikuti prinsip clean code dan arsitektur yang baik.                                                                      |


---

> EcoTrip membantu pengguna berkontribusi menjaga lingkungan sambil menikmati perjalanan yang bertanggung jawab. 🌱
