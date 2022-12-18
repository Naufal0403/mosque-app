import 'package:flutter/material.dart';
import 'package:flutter_api/presentation/pages/absensi/pesantren_absensi_page.dart';
import 'package:flutter_api/presentation/pages/auth/login_page.dart';
import 'package:flutter_api/presentation/pages/auth/reset_password_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/donation/list_donation_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/donor/category/add/add_donor_category_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/donor/category/index/donor_category_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/donor/list/staff/add/staff_add_donor_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/donor/list/staff/index/staff_donor_list_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/menu/manager/manager_menu_fundraising_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/menu/supervisor/supervisor_menu_fundraising_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/nominal/supervisor/add/supervisor_add_nominal_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/nominal/supervisor/index/supervisor_nominal_fundrarsing_index_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/overview/manager/manager_overview_fundraising_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/overview/staff/staff_overview_fundraising_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/overview/takmir/takmir_overview_fundraising_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/overview/treasurer/treasurer_overview_fundraising_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/task/supervisor/add/supervisor_add_task_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/task/supervisor/index/supervisor_index_task_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/team/add/add_fundraising_team_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/target/add/add_target_fundrasing_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/overview/supervisor/supervisor_overview_fundraising_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/target/index/target_fundraising_page.dart';
import 'package:flutter_api/presentation/pages/baitul_mal/fundraising/schedule/index/schedule_fundraising_page.dart';
import 'package:flutter_api/presentation/pages/common/onboarding_page.dart';
import 'package:flutter_api/presentation/pages/home/home_page.dart';
import 'package:flutter_api/presentation/pages/masjid/jadwal_sholat/jadwal_sholat_list_page.dart';
import 'package:flutter_api/presentation/pages/masjid/pengurus/pengurus_list_page.dart';
import 'package:flutter_api/presentation/pages/masjid/profil_masjid_page.dart';
import 'package:flutter_api/presentation/pages/masjid/program/program_list_page.dart';
import 'package:flutter_api/presentation/pages/masjid/ringkasan_masjid_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/kelas/kelas_list_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/pelajaran/pelajaran_list_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/pendaftaran/pendaftaran_list_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/pendaftaran_guru/pendaftaran_list_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/pengurus/pengurus_list_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/profil_pesantren_page.dart';
import 'package:flutter_api/presentation/pages/pesantren/ringkasan_pesantren_page.dart';
import 'package:flutter_api/presentation/pages/profile/profile_page.dart';
import 'package:flutter_api/presentation/utils/routes/route_name.dart';

import '../../pages/baitul_mal/fundraising/menu/menu_fundraising_page.dart';
import '../../pages/baitul_mal/fundraising/schedule/add/add_fundraising_schedule_page.dart';
import '../../pages/common/not_found_page.dart';

class RouteUtils {
  static Map<String, Widget Function(Object? args)> mapRoutes = {
    RouteName.ONBOARDING: (args) => const OnboardingPage(),
    RouteName.LOGIN: (args) => const LoginPage(),
    RouteName.HOME: (args) => HomePage(),
    RouteName.RINGKASAN_PESANTREN: (args) => const RingkasanPesantren(),
    RouteName.PROFIL_PESANTREN: (args) => const ProfilPesantrenPage(),
    RouteName.KELAS_PESANTREN: (args) => const KelasListPage(),
    RouteName.PELAJARAN_PESANTREN: (args) => const PelajaranListPage(),
    RouteName.PENDAFTARAN_PESANTREN: (args) => const PendaftaranListPage(),
    RouteName.PENDAFTARAN_GURU_PESANTREN: (args) =>
        const PendaftaranGuruListPage(),
    RouteName.PESANTREN_ABSENSI: (args) => const PesantrenAbsensiPage(),
    RouteName.RINGKASAN_MASJID: (args) => const RingkasanMasjidPage(),
    RouteName.PROFILE_MASJID: (args) => const ProfilMasjidPage(),
    RouteName.PENGURUS_MASJID: (args) => const PengurusListPage(),
    RouteName.PENGURUS_PESANTREN: (args) => const PengurusPesantrenListPage(),
    RouteName.JADWAL_SHOLAT: (args) => const JadwalSholatListPage(),
    RouteName.PROGRAM_MASJID: (args) => const ProgramListPage(),
    RouteName.RESET_PASSWORD: (args) => const ResetPasswordPage(),
    RouteName.LIST_DONATION: (args) => const ListDonationPage(),
    RouteName.PROFILE: (args) => const ProfilePage(),
    RouteName.DONOR_CATEGORY: (args) => const DonorCategoryPage(),
    RouteName.ADD_DONOR_CATEGORY: (args) => AddDonorCategoryPage(),
    RouteName.STAFF_LIST_DONOR: (args) => const StaffDonorListPage(),
    RouteName.STAFF_ADD_DONOR_BIODATA: (args) => const StaffAddDonorPage(),
    RouteName.TARGET_FUNDRAISING: (args) => const TargetFundraisingPage(),
    RouteName.ADD_TARGET_FUNDRAISING: (args) => const AddTargetFundrasingPage(),
    RouteName.SCHEDULE_FUNDRAISING: (args) => ScheduleFundraisingPage(),
    RouteName.ADD_SCHEDULE_FUNDRAISING: (args) => AddFundraisingSchedulePage(),
    RouteName.ADD_FUNDRAISING_TEAM: (args) => AddFundraisingTeamPage(),
    RouteName.SUPERVISOR_OVERVIEW_FUNDRAISING: (args) =>
        const SupervisorOverviewFundraisingPage(),
    RouteName.STAFF_OVERVIEW_FUNDRAISING: (args) =>
        const StaffOverviewFundraisingPage(),
    RouteName.TAKMIR_OVERVIEW_FUNDRAISING: (args) =>
        const TakmirOverviewFundraisingPage(),
    RouteName.TREASURER_OVERVIEW_FUNDRAISING: (args) =>
        const TreasurerOverviewFundraisingPage(),
    RouteName.MANAGER_OVERVIEW_FUNDRAISING: (args) =>
        const ManagerOverviewFundraisingPage(),
    RouteName.MENU_FUNDRAISING: (args) => const MenuFundraisingPage(),
    RouteName.MANAGER_MENU_FUNDRAISING: (args) =>
        const ManagerFundraisingMenuPage(),
    RouteName.SUPERVISOR_MENU_FUNDRAISING: (args) =>
        const SupervisorMenuFundraisingPage(),
    RouteName.SUPERVISOR_DIVISION_TASK_INDEX: (args) =>
        const SupervisorIndexTaskPage(),
    RouteName.SUPERVISOR_DIVISION_TASK_ADD: (args) =>
        const SupervisorAddTaskPage(),
    RouteName.SUPERVISOR_DIVISION_NOMINAL_INDEX: (args) =>
        const SupervisorNominalFundraisingIndexPage(),
    RouteName.SUPERVISOR_DIVISION_NOMINAL_ADD: (args) =>
        const SupervisorAddNominalPage(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => generateWidget(
          routeName: settings.name, arguments: settings.arguments),
    );
  }

  static Widget generateWidget({String? routeName, Object? arguments}) {
    print('Current Route : $routeName');
    return mapRoutes[routeName] != null
        ? mapRoutes[routeName]!(arguments)
        : const NotFoundPage();
  }
}
