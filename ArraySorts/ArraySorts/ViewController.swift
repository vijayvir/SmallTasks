//
//  ViewController.swift
//  ArraySorts
//
//  Created by vijay vir on 11/6/17.
//  Copyright © 2017 vijay vir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.


		struct Employee{
			var company : String?
			var empID : String?
		}
		var employees : [Employee] = []
		employees.append(Employee(company: "apple", empID: "E10"))
		employees.append(Employee(company: "apple", empID: "E11"))
		employees.append(Employee(company: "apple", empID: "E12"))
		employees.append(Employee(company: "apple", empID: "E13"))
		employees.append(Employee(company: "microsoft", empID: "E10"))
		employees.append(Employee(company: "microsoft", empID: "E11"))
		employees.append(Employee(company: "microsoft", empID: "E12"))
		employees.append(Employee(company: "microsoft2", empID: "E13"))
		employees.append(Employee(company: "google", empID: "E10"))
		employees.append(Employee(company: "google", empID: "E11"))
		employees.append(Employee(company: "google", empID: "E12"))
		employees.append(Employee(company: "google", empID: "E13"))

		let arrayBasedCompanies = 	Set(employees.map { (emp) -> String  in
			return emp.company ?? ""
		}).map { (companyString) -> [Employee] in
			let companyEmpoyee = 	  employees.filter({ (emp) -> Bool in
				if emp.company == companyString {
					return true
				}
				return false
			})
			return companyEmpoyee
		}

		print(arrayBasedCompanies , arrayBasedCompanies.count)

		_ = arrayBasedCompanies.map({ (companiesEmpoyees) -> Void in

			 print("💂🏻‍♀️💂🏻‍♀️💂🏻‍♀️💂🏻‍♀️💂🏻‍♀️💂🏻‍♀️💂🏻‍♀️")
			_ = companiesEmpoyees.map({ (empoyee) -> Void in

     print("⏰" , empoyee.company ?? "" , empoyee.empID ?? "")
				})

		})


	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

