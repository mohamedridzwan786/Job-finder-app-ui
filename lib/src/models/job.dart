class JobModel {
  static final jobs = [
    Item(
        id: 1,
        company: "SLACK",
        date: "09 Sept 2020",
        role: "Senior Product Designer",
        salary: "\$6k-\$8k/month",
        location:"East, Singpore"),
    Item(
        id: 2,
        company: "CRYPTO.COM",
        date: "09 Sept 2020",
        role: "Front-End Developer",
        salary: "\$5k-\$6k/month",
        location:"Central, Singpore"),
    Item(
        id: 3,
        company: "AMAZON",
        date: "07 Sept 2020",
        role: "Product Owner",
        salary: "\$8k-\$10k/month",
        location:"East, Singpore"),
    Item(
        id: 4,
        company: "ASANA",
        date: "06 Sept 2020",
        role: "Business Analyst",
        salary: "\$7k-\$8k/month",
        location:"West, Singpore"),
    Item(
        id: 5,
        company: "GOOGLE",
        date: "06 Sept 2020",
        role: "Senior Product Designer",
        salary: "\$6k-\$8k/month",
        location:"North-East, Singpore"),

  ];
}

class Item {
  final int id;
  final String company;
  final String date;
  final String role;
  final String salary;
  final String location;

  Item(
      {required this.id,
        required this.company,
        required this.date,
        required this.role,
        required this.salary,
        required this.location});
}

class AppliedJobModel {
  static final jobs = [
    Item(
        id: 1,
        company: "SLACK",
        date: "09 Sept 2020",
        role: "Senior Product Designer",
        salary: "\$6k-\$8k/month",
        location:"East, Singpore"),
    Item(
        id: 2,
        company: "AMAZON",
        date: "07 Sept 2020",
        role: "Product Owner",
        salary: "\$8k-\$10k/month",
        location:"East, Singpore"),

  ];
}


