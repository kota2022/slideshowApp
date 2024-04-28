//
//  SecondViewController.swift
//  slideshoApp2
//
//  Created by Tsuji Kota on 27.04.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondImage: UIImageView!
    
    var x:Int = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        secondImage.image = UIImage(named: "\(x).JPG")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
