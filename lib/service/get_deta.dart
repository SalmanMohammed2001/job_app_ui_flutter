import 'package:job_app_ui/model/job_model.dart';

class GetData {
  List<JobModel> getJobData() {
    const instaLogo =
        "https://img.freepik.com/free-psd/glowing-instagram-logo-realistic-3d-circle_125540-2101.jpg?t=st=1712988015~exp=1712991615~hmac=b565181b4e57b1b223560a2b17e703c8bf61a469190fb51705672c6218d3188a&w=996";

    const uberLogo =
        "https://freelogopng.com/images/all_img/1659761297uber-icon.png";

    const tikTokLogo =
        "https://img.freepik.com/free-psd/3d-rounded-square-with-glossy-tiktok-logo_125540-1541.jpg?t=st=1712988172~exp=1712991772~hmac=d0994999bf49f4976260a3ba0e93f8cd45cc442cba521e79612446c0333b7a23&w=996";

    List<JobModel> jobs = [
      JobModel(
          title: "Senior UX Designer",
          salary: "LKR 80000 /month",
          companyName: "Instgram",
          logo: uberLogo,
          city: "Colombo",
          time: "7 Days Left"),
      JobModel(
          title: "Senior UI Designer",
          salary: "LKR 90000 /month",
          companyName: "TikTok",
          logo: uberLogo,
          city: "Kurunagale",
          time: "4 Days Left"),
      JobModel(
          title: "Senior Mobile Developer",
          salary: "LKR 140000 /month",
          companyName: "Instgram",
          logo: uberLogo,
          city: "Negambo",
          time: "7 Days Left"),
      JobModel(
          title: "Senior Web Designer",
          salary: "LKR 180000 /month",
          companyName: "FaceBokk",
          logo: uberLogo,
          city: "USA",
          time: "7 Days Left")
    ];

    return jobs;
  }
}
