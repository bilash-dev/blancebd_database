const String tblContact = 'tblContact';
const String tblContactColId = 'id';
const String tblContactColDeposit = 'deposit';
const String tblContactColWithdraw = 'withdraw';
const String tblContactColCurrentBalance = 'currentBalance';
const String tblContactColDepositComplete = 'depositComplete';

class ContactModel {
   int? id;
   String? deposit;
   String? withdraw;
   String? currentBalance;
   String? depositComplete;


   ContactModel({this.id, this.deposit, this.withdraw, this.currentBalance,
     this.depositComplete});

   Map<String, dynamic> toMap(){
     var map = <String, dynamic>{
       tblContactColDeposit : deposit,
       tblContactColWithdraw : withdraw,
       tblContactColCurrentBalance : currentBalance,
       tblContactColDepositComplete : depositComplete,
     };
     if (id != null){
      map[tblContactColId] = id;
     }

     return map;
   }

   @override
  String toString() {
    return 'ContactModel{id: $id, deposit: $deposit, withdraw: $withdraw, currentBalance: $currentBalance, depositComplete: $depositComplete}';
  }
}


//class ContactModel{
  //int? id;
  //String name;
  //String mobileNumber;
  //String companyName;
  //String emailAddress;
  //String designation;
  //String website;
  //String streetAddress;
  //bool favorite;


  //ContactModel(
  //{this.id,
    //this.name,
    //this.mobileNumber,
    //this.companyName,
    //this.emailAddress,
    //this.designation,
    //this.website,
    //this.streetAddress,
    //this.favorite});

 // @override
  //String toString() {
    //return 'ContactModel{id: $id, name: $name, mobileNumber: $mobileNumber, companyName: $companyName, emailAddress: $emailAddress, designation: $designation, website: $website, streetAddress: $streetAddresss, favorite: $favorite}';
  //}
//}
