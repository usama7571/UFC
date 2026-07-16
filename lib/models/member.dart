class Member {
  int? id;

  String memberId;
  String name;
  String phone;
  String address;
  String joiningDate;
  String membershipPlan;
  String expiryDate;
  String status;

  Member({
    this.id,
    required this.memberId,
    required this.name,
    required this.phone,
    required this.address,
    required this.joiningDate,
    required this.membershipPlan,
    required this.expiryDate,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'memberId': memberId,
      'name': name,
      'phone': phone,
      'address': address,
      'joiningDate': joiningDate,
      'membershipPlan': membershipPlan,
      'expiryDate': expiryDate,
      'status': status,
    };
  }

  factory Member.fromMap(Map<String, dynamic> map) {
    return Member(
      id: map['id'],
      memberId: map['memberId'],
      name: map['name'],
      phone: map['phone'],
      address: map['address'],
      joiningDate: map['joiningDate'],
      membershipPlan: map['membershipPlan'],
      expiryDate: map['expiryDate'],
      status: map['status'],
    );
  }
}
