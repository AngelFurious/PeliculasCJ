//
//  ViewController.swift
//  PeliculasCJ
//
//  Created by B303-20 on 28/11/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblCineTitle: UILabel!
    
    override func viewDidLoad() {
        
        UIView.animate(withDuration: 2) {
            
            self.view.layoutIfNeeded()
            self.lblCineTitle.transform = CGAffineTransform(scaleX: 1.5, y: 1.0)
            self.lblCineTitle.transform = self.lblCineTitle.transform.concatenating(CGAffineTransform(translationX: 0, y: -150))
            self.lblCineTitle.backgroundColor = UIColor.lightGray
        }
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
