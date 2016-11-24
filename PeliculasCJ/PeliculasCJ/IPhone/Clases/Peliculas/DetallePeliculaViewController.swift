//
//  DetallePeliculaViewController.swift
//  PeliculasCJ
//
//  Created by B303-20 on 10/11/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit


class DetallePeliculaViewController: UIViewController {
    
    @IBOutlet weak var lblNombrePelicula: UILabel!
    @IBOutlet weak var imgPelicula: UIImageView!
    @IBOutlet weak var lblDetalle: UILabel!
    
    var objPelicula : Pelicula!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CDMImageDownloaded.descargarImagen(enURL: self.objPelicula.pelicula_urlImagen, paraImageView : imgPelicula , conPlaceHolder: nil) { (error, nombreImagen, imagen) in
            
            self.imgPelicula.image = imagen
        }
        
        
        
        
        
        
        
        
    
        self.lblNombrePelicula.text = self.objPelicula.pelicula_nombre!
        self.lblDetalle.text = self.objPelicula.pelicula_resumen!
        
 
        
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
