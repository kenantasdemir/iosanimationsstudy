//
//  ViewController.swift
//  iosanimationsstudy
//
//  Created by kenan on 14.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var customLabel: UILabel!
    
    
 
    @IBAction func start(_ sender: UIButton) {
     
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func alpha(){
        self.imageView.alpha = 0
        UIView.animate(withDuration: 5, animations: {
            self.imageView.alpha = 1
        },completion: nil)
    }
    
    func scale(){
        UIView.animate(withDuration: 1, animations: {
            self.imageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        },completion: nil)
    }
    
    func rotate(){
        UIView.animate(withDuration: 1, animations: {
            self.customLabel.transform = CGAffineTransform(rotationAngle: 90 * .pi/180)
        },completion: nil)
    }
    
    func translation(){
        UIView.animate(withDuration: 1, animations: {
            self.customLabel.transform = CGAffineTransform(translationX: 50, y: 0)
        },completion: nil)
    }
    
    func delay(){
        UIView.animate(withDuration: 2,delay: 1, animations: {
            self.customLabel.transform = CGAffineTransform(translationX: 0, y: 100)
        },completion: nil)
    }
    
    func acceleration(){
        UIView.animate(withDuration: 2,delay: 2,options: [.curveLinear] ,animations: {
            self.customLabel.transform = CGAffineTransform(translationX: 0, y: 100)
        },completion: nil)
    }
    
    func repeatAnimation(){
        UIView.animate(withDuration: 1, delay: 2, options: [.repeat], animations: {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: 50)
        },completion: nil)
    }
    
    
    func cokluAnimasyon(){
        
        UIView.animate(withDuration: 1, animations: {
            
            let hareket = CGAffineTransform(translationX: 0, y: 100)
            let kucul = CGAffineTransform(scaleX: 0.5, y: 0.5)
            let don = CGAffineTransform(rotationAngle: 90 * .pi/180)
            
            let x = hareket.concatenating(kucul)
            
            self.yazi.transform = don.concatenating(x)
            
            self.yazi.alpha = 0
            
        },completion: nil)
        
    }
    
    
    func ardisikAnimasyon(){
        
    
        UIView.animate(withDuration: 1, animations: {
            
            self.resim.alpha = 0
            
        },completion: { (true) in
            
            UIView.animate(withDuration: 1, animations: {
                
                self.yazi.alpha = 0
                
            },completion: { (true) in
            
                UIView.animate(withDuration: 1, animations: {
                    
                    self.button.alpha = 0
                    
                },completion: { (true) in
                    
                    UIView.animate(withDuration: 1, animations: {
                        
                        self.resim.alpha = 1
                        self.yazi.alpha = 1
                        self.button.alpha = 1
                        
                    },completion: nil)
                    
                })
            
            })
            
            
        })
        
    }
    


}

