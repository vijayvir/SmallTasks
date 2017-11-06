# Sort array with new apis of swift 

## Problem : 

```swift
let array = [["company" :"apple", "empID" : "E10"],
             ["company" : "apple", "empID" : "E10"],
             ["company" : "apple", "empID" : "E12"],
             ["company" : "apple", "empID" : "E13"],
             ["company" : "apple", "empID" : "E14"],
             ["company" : "microsoft", "empID" : "E106"],
             ["company" : "microsoft", "empID" : "E103"],
             ["company" : "google", "empID" : "E17"],
             ["company" : "google", "empID" : "E19"],
             ["company" : "google", "empID" : "E122"]]

var companyDict: [String: [String]] = [:]
for dict in array {
  if let company = dict["company"],
    let empID = dict["empID"] {
      if let _ = companyDict[company] {
        companyDict[company]?.append(empID)
      } else {
        companyDict[company] = [empID]
      }
  }
}

//TO
  
  let sort array : [
    [
        ["company" :"apple", "empID" : "E10"],
         ["company" : "apple", "empID" : "E10"],
         ["company" : "apple", "empID" : "E12"],
         ["company" : "apple", "empID" : "E13"],
         ["company" : "apple", "empID" : "E14"]
    ],
     [
        ["company" : "microsoft", "empID" : "E106"],
         ["company" : "microsoft", "empID" : "E103"]
    ],
     [
        ["company" : "google", "empID" : "E17"],
         ["company" : "google", "empID" : "E19"],
         ["company" : "google", "empID" : "E122"]
    ]
]
```

##  Solutions with new apis of swift 

First of all make structure of array of problems 

```swift

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
```



the use this logic : 

```swift

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

```

