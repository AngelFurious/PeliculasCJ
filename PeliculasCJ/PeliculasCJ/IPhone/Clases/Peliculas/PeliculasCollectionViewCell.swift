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

}
