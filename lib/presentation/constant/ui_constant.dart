import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';

class UiConstant {
  static const masjiSubMenu = [
    {
      "label": "Ringkasan",
      "page": RouteName.RINGKASAN_MASJID,
    },
    {
      "label": "Profil",
      "page": RouteName.PROFILE_MASJID,
    },
    {
      "label": "Pengurus",
      "page": RouteName.PENGURUS_MASJID,
    },
    {
      "label": "Jadwal Sholat",
      "page": RouteName.JADWAL_SHOLAT,
    },
    {
      "label": "Program",
      "page": RouteName.PROGRAM_MASJID,
    },
    {
      "label": "Kas",
      "page": RouteName.HOME,
    }
  ];

  static const pesantrenSubMenu = [
    {
      "label": "Ringkasan",
      "page": RouteName.RINGKASAN_PESANTREN,
    },
    {
      "label": "Profil",
      "page": RouteName.PROFIL_PESANTREN,
    },
    {
      "label": "Pengurus",
      "page": RouteName.PENGURUS_PESANTREN,
    },
    {
      "label": "Kelas",
      "page": RouteName.KELAS_PESANTREN,
    },
    {
      "label": "Pelajaran",
      "page": RouteName.PELAJARAN_PESANTREN,
    },
    {
      "label": "Pendaftaran",
      "page": RouteName.PENDAFTARAN_PESANTREN,
    },
    {
      "label": "Guru",
      "page": RouteName.PENDAFTARAN_GURU_PESANTREN,
    },
    {
      "label": "Absensi",
      "page": RouteName.PESANTREN_ABSENSI,
    },
    {
      "label": "Ujian",
      "page": RouteName.HOME,
    },
    {
      "label": "Penilaian",
      "page": RouteName.HOME,
    },
    {
      "label": "Kas",
      "page": RouteName.HOME,
    },
  ];

  static const baitulMalSubMenu = [
    {
      "label": "Fundraising",
      "page": RouteName.MENU_FUNDRAISING,
    },
    {
      "label": "Donasi",
      "page": RouteName.HOME,
    },
    {
      "label": "Infaq / Sedekah",
      "page": RouteName.HOME,
    },
    {
      "label": "Konfigurasi",
      "page": RouteName.HOME,
    },
    {
      "label": "Qurban",
      "page": RouteName.HOME,
    },
    {
      "label": "Wakaf",
      "page": RouteName.HOME,
    },
    {
      "label": "Zakat",
      "page": RouteName.HOME,
    }
  ];

  static const Color primary = Color(0xff249A84);
}
