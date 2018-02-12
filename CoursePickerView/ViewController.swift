//
//  ViewController.swift
//  CoursePickerView
//
//  Created by Lim Chang Siang on 13/2/18.
//  Copyright © 2018 Lim Chang Siang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        courses = ["OOAD", "JAVA", "PMIS", "JAVA EE"];

        let pickerView : UIPickerView = UIPickerView();
        pickerView.delegate = self;
        pickerView.dataSource = self;
        textFieldCourse.inputView = pickerView;
    }
    
    @IBOutlet weak var textFieldCourse: UITextField!
    var courses: Array<String>?;
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses!.count;
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return courses![row];
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component:Int){
        textFieldCourse.text = courses![row];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

