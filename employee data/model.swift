    //
    //  File.swift
    //  employee data
    //
//  Created by Mac on 04.11.2020.
//

    struct Employee {
        let name: String
        let surname: String
        let phone: String
        let email: String
        
        var fullName: String {
            "\(surname) \(name)"
        }
    }
    
    extension Employee {
        
        class DataManager {
            let names = [
                "Иван","Антон",
                "Карим","Александр",
                "Ахмет", "Михаил",
                "Роман","Василий",
                "Алексей","Дмитрий"
            ]
            let surnames = [
                "Иванов", "Антонов",
                "Каримов","Александров",
                "Ахметов","Михайлов",
                "Романов","Васильев",
                "Алексеев","Дмитриев"
            ]
            let phones = [
                "0101", "0102","0103","0104","0105",
                "0106", "0107","0108","0109","0110"
            ]
            let emails = [
                "abc@mail.ru","cvf@mail.ru",
                "sfv@mail.ru","lgd@mail.ru",
                "edv@mail.ru","sas@mail.ru",
                "dwd@mail.ru","vwr@mail.ru",
                "grv@mail.ru","dfn@mail.ru"
            ]
            init() {}
        }
        
        static func getEmployeeData() -> [Employee] {
            var employees: [Employee] = []
            for _ in 1...10 {
                let employee = Employee (name: DataManager().names.randomElement() ?? "",
                                         surname: DataManager().surnames.randomElement() ?? "",
                                         phone: DataManager().phones.randomElement() ?? "",
                                         email: DataManager().emails.randomElement() ?? "")
                employees.append(employee)
                
            }
            return employees
        }
    }

