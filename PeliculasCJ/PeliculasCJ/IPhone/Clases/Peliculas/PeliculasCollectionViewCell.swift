//
//  PeliculasCollectionViewCell.swift
//  PeliculasCJ
//
//  Created by B303-20 on 10/11/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit

class PeliculasCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgPelicula: UIImageView!
    @IBOutlet weak var lblNombrePelicula: UILabel!
    
    var objPelicula : Pelicula?
    
    func actualizarData(){
        
        self.lblNombrePelicula.text = self.objPelicula?.pelicula_nombre!
        
        CDMImageDownloaded.descargarImagen(enURL: self.objPelicula?.pelicula_urlImagen, paraImageView: self.imgPelicula, conPlaceHolder: nil) { (esCorrecto, nombreImagen, imagen) in
            
            self.imgPelicula.image = imagen
        }
    }
    
    override func draw(_ rect: CGRect) {
        
        self.layer.shadowRadius = 2
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        
    }


}
