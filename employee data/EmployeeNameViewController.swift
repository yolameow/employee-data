//
//  EmployeeNameViewController.swift
//  employee data
//
//  Created by Mac on 04.11.2020.
//

import UIKit

class EmployeeNameViewController: UITableViewController {
    
    var employees = Employee.getEmployeeData()

    override func viewDidLoad() {
        super.viewDidLoad()


    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        employees.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employee", for: indexPath)
        let fullName = employees[indexPath.row]
        cell.textLabel?.text = fullName.fullName
        
        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}
