//
//  Estreno2ViewController.swift
//  PeliculasCJ
//
//  Created by B303-20 on 1/12/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit

class Estreno2ViewController: UIViewController {

    
    @IBOutlet weak var video: UIWebView!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        let youtubeURL = "https://www.youtube.com/embed/TND-VkIrEUI";
        
        video.loadHTMLString("<iframe width=\"298\" height=\"224\" src=\"\(youtubeURL)?&autoplay=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
        
        super.viewDidAppear(animated)
        
        
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
