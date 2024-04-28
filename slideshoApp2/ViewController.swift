//
//  ViewController.swift
//  slideshoApp2
//
//  Created by Tsuji Kota on 24.04.2024.
//

import UIKit

class ViewController: UIViewController {

    
    var number: Int = 1
    var timer: Timer!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func startStopButton(_ sender: Any) {
        if self.timer == nil{
            
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        } else{
            
            self.timer.invalidate()
            self.timer = nil
            imageView.image = UIImage(named: "\(number).JPG")
            
        }
    }
    @objc func updateTimer(_ timer: Timer){
        
        if number <= 4{
            self.number += 1
            imageView.image = UIImage(named: "\(number).JPG")
        } else {
            self.number = 1
            imageView.image = UIImage(named: "\(number).JPG")
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if self.timer == nil{
            
            if number <= 4{
                self.number += 1
                imageView.image = UIImage(named: "\(number).JPG")
            } else {
                self.number = 1
                imageView.image = UIImage(named: "\(number).JPG")
            }
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        if self.timer == nil{
            if number >= 2{
                self.number -= 1
                imageView.image = UIImage(named: "\(number).JPG")
            } else {
                self.number = 5
                imageView.image = UIImage(named: "\(number).JPG")
            }
        }
    }
    

    @IBAction func imageButton(_ sender: Any) {
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondImage: SecondViewController = segue.destination as! SecondViewController
        
        secondImage.x = self.number
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

