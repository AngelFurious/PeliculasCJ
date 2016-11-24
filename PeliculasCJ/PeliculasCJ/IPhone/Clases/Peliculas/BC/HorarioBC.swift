//
//  HorarioBC.swift
//  PeliculasCJ
//
//  Created by B303-21 on 24/11/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit

class HorarioBC: NSObject {
    
    class func listarHorarios(conCompletion completion : @escaping(_ arrayHorarios : NSMutableArray) -> Void) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let arrayHorarios = NSMutableArray(array: HorariosDALC.listarTodasLosHorarios(conContexto: appDelegate.persistentContainer.viewContext))
        completion(arrayHorarios.count == 0 ? NSMutableArray() : arrayHorarios)
    }


}
