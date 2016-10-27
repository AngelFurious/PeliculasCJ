//
//  PeliculasTableViewCell.swift
//  PeliculasCJ
//
//  Created by B303-20 on 27/10/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit

class PeliculasTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblNombrePelicula: UILabel!
    
    @IBOutlet weak var imgPelicula: UIImageView!
    
    
    var objPelicula : Pelicula?
    
    func actualizarData(){
        
        self.lblNombrePelicula.text = self.objPelicula?.pelicula_nombre!
        
        CDMImageDownloaded.descargarImagen(enURL: self.objPelicula?.pelicula_urlImagen, paraImageView: self.imgPelicula, conPlaceHolder: nil) { (esCorrecto, nombreImagen, imagen) in
            
            self.imgPelicula.image = imagen
        }
    }
    

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
