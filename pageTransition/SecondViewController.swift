//
//  SecondViewController.swift
//  pageTransition
//
//  Created by 6272 on 9/14/2560 BE.
//  Copyright © 2560 6272. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var resultdata: String = ""

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func backMethod(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var FoodImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultdata
        // Do any additional setup after loading the view.
        FoodImage.image = UIImage(named: resultdata+".jpeg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
