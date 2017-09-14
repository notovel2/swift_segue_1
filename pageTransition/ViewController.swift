//
//  ViewController.swift
//  pageTransition
//
//  Created by 6272 on 9/14/2560 BE.
//  Copyright © 2560 6272. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let food = ["Beef","Chicken","Fish","Pork"]
    let drink = ["Beer","Soda","Tea","Water"]

    
    @IBOutlet weak var myPickerview: UIPickerView!
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
            return food.count
        }
        else{
            return drink.count
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0
        {
            return food[row]
        }
        else{
            return drink[row]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.myPickerview.delegate   = self
        self.myPickerview.dataSource = self
        
        myPickerview.selectRow(0, inComponent: 0, animated: true)
        myPickerview.selectRow(0, inComponent: 1, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Food" {
            let vFood = food[myPickerview.selectedRow(inComponent: 0)]
            (segue.destination as! SecondViewController).resultdata = vFood
            
        }
        else{
            let vDrink = drink[myPickerview.selectedRow(inComponent: 1)]
            (segue.destination as! ThirdViewController).drinkResult = vDrink

        }
//        (segue.destination as! SecondViewController).resultdata = inputText.text!
    }
}
