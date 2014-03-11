AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$10$VzRV.AFjofU9J2LhiIjmhuayz0Af3qo99WdWL6qQ.akeixVcl7aEe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil}
])
Category.create!([
  {name: "sdf", position: nil}
])
User.create!([
  {email: "111@123.123", password_hash: "$2a$10$STjkIUHeohO2Q6CBkNOrOe1SgmmD0K2yyHs.eNlDrbUct4zEMrysO", password_salt: "$2a$10$STjkIUHeohO2Q6CBkNOrOe", type: nil, name: nil, second_name: nil, pname: nil, category_id: nil, work_as_id: nil, old: nil, price: nil, image: nil, phone: nil, describe: nil, status: nil},
  {email: "1234@123.123", password_hash: "$2a$10$pnEvgpj9NPeAhaf8VMCXKOLKF/WzqzTovMZvKde1s7.czW7i5iZwG", password_salt: "$2a$10$pnEvgpj9NPeAhaf8VMCXKO", type: "Soul", name: "adfa", second_name: nil, pname: nil, category_id: nil, work_as_id: nil, old: nil, price: nil, image: nil, phone: nil, describe: nil, status: nil},
  {email: "12345@123.123", password_hash: "$2a$10$fzX4HQ17OSi5KErAaXblP.oBFQTll9x/IJ/VXnsZLansqB7NBiQvG", password_salt: "$2a$10$fzX4HQ17OSi5KErAaXblP.", type: "Laird", name: "sdfsdf", second_name: nil, pname: nil, category_id: nil, work_as_id: nil, old: nil, price: nil, image: nil, phone: nil, describe: nil, status: nil},
  {email: "123@123.123", password_hash: "$2a$10$fPFRkE5hw2vo.QAAXmvR1eGhQ4HgPzdcxtqqezuWdmBq24gZwGlwq", password_salt: "$2a$10$fPFRkE5hw2vo.QAAXmvR1e", type: "Soul", name: "dsfsdf", second_name: "", pname: "231sdf", category_id: 1, work_as_id: nil, old: nil, price: nil, image: nil, phone: "", describe: "", status: ""},
  {email: "12@123.123", password_hash: "$2a$10$JowUH/flNgj5yq84O.u1VO.53fDoSrwyKO0JFRtPQLnYx4cJTRYIC", password_salt: "$2a$10$JowUH/flNgj5yq84O.u1VO", type: "Laird", name: "scfgsdfs", second_name: nil, pname: nil, category_id: 3, work_as_id: nil, old: nil, price: nil, image: nil, phone: "67567", describe: "768", status: "34"}
])
Laird.create!([
  {email: "12345@123.123", password_hash: "$2a$10$fzX4HQ17OSi5KErAaXblP.oBFQTll9x/IJ/VXnsZLansqB7NBiQvG", password_salt: "$2a$10$fzX4HQ17OSi5KErAaXblP.", type: "Laird", name: "sdfsdf", second_name: nil, pname: nil, category_id: nil, work_as_id: nil, old: nil, price: nil, image: nil, phone: nil, describe: nil, status: nil},
  {email: "12@123.123", password_hash: "$2a$10$JowUH/flNgj5yq84O.u1VO.53fDoSrwyKO0JFRtPQLnYx4cJTRYIC", password_salt: "$2a$10$JowUH/flNgj5yq84O.u1VO", type: "Laird", name: "scfgsdfs", second_name: nil, pname: nil, category_id: 3, work_as_id: nil, old: nil, price: nil, image: nil, phone: "67567", describe: "768", status: "34"}
])
Soul.create!([
  {email: "1234@123.123", password_hash: "$2a$10$pnEvgpj9NPeAhaf8VMCXKOLKF/WzqzTovMZvKde1s7.czW7i5iZwG", password_salt: "$2a$10$pnEvgpj9NPeAhaf8VMCXKO", type: "Soul", name: "adfa", second_name: nil, pname: nil, category_id: nil, work_as_id: nil, old: nil, price: nil, image: nil, phone: nil, describe: nil, status: nil},
  {email: "123@123.123", password_hash: "$2a$10$fPFRkE5hw2vo.QAAXmvR1eGhQ4HgPzdcxtqqezuWdmBq24gZwGlwq", password_salt: "$2a$10$fPFRkE5hw2vo.QAAXmvR1e", type: "Soul", name: "dsfsdf", second_name: "", pname: "231sdf", category_id: 1, work_as_id: nil, old: nil, price: nil, image: nil, phone: "", describe: "", status: ""}
])
