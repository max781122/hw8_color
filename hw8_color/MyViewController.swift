//
//  MyViewController.swift
//  hw8_color
//
//  Created by 建基吳 on 2017/12/5.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var red: UISlider!
    @IBOutlet weak var green: UISlider!
    @IBOutlet weak var blue: UISlider!
    @IBOutlet weak var rtext: UILabel!
    @IBOutlet weak var gtext: UILabel!
    @IBOutlet weak var btext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bg.backgroundColor = UIColor(
            red: CGFloat(red.value),
            green: CGFloat(green.value),
        blue: CGFloat(blue.value),
            alpha: 1)
        rtext.text = "255"
        gtext.text = "255"
        btext.text = "255"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sliderChange(_ sender: UISlider) {
        bg.backgroundColor = UIColor(
            red: CGFloat(red.value),
            green: CGFloat(green.value),
            blue: CGFloat(blue.value),
            alpha: 1)
        if(sender==red){
            rtext.text = String(format:"%.f", red.value*255)
        }else if(sender==green){
            gtext.text = String(format:"%.f",green.value*255)
        }else if(sender==blue){
            btext.text = String(format:"%.f",blue.value*255)
        }
        print("\(red.value) \(green.value) \(blue.value) ")
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
