//
//  ViewController.swift
//  iOSProofs_MVVM_Sample
//
//  Created by Nikhil Balne on 25/04/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studentsTableView: UITableView!
    
    var studentViewModel = StudentViewModel()
    
    @IBAction func addButtonTapped(_ sender: Any) {
        studentViewModel.addStudentData(name: "Student:\(studentViewModel.student.count)", address: "Address:\(studentViewModel.student.count)")
        studentsTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentViewModel.student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentObject = studentViewModel.student[indexPath.row]
        let cell : CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        cell.nameLabel.text = studentObject.name
        cell.addressLabel.text = studentObject.address
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 126
    }
    
}
