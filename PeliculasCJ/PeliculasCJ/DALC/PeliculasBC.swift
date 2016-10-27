//
//  PeliculasBC.swift
//  PeliculasCJ
//
//  Created by B303-21 on 27/10/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit

class PeliculasBC: NSObject {
    
    
    class func listarPeliculas(conCompletion completion : @escaping(_ arrayPeliculas : NSMutableArray) -> Void) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let arrayPeliculas = NSMutableArray(array: PeliculaDALC.listarTodasLasPeliculas(conContexto: appDelegate.persistentContainer.viewContext))
        completion(arrayPeliculas.count == 0 ? NSMutableArray() : arrayPeliculas)
    }
    
    

}
