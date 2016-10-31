//
//  CadenaDALC.swift
//  PeliculasCJ
//
//  Created by B303-20 on 31/10/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit
import CoreData

class CadenaDALC: NSObject {
    class func obtener(paraIdCadena idCadena : String, enArrayCadena  arrayCadenas : NSArray) -> Cadena?{
        
        if arrayCadenas.count == 0 {
            return nil
        }
        
        let predicado = NSPredicate(format: "cadena_id == %@", idCadena)
        let arrayResultado = arrayCadenas .filtered(using: predicado)
        
        return arrayResultado.count != 0 ? arrayResultado[0] as? Cadena : nil
    }
    
    
    
    
    @discardableResult class func agregar(cadena objCadena : CadenaBE, enArrayCadena  arrayCadenas : NSArray,  conContexto contexto : NSManagedObjectContext) -> Cadena {
        
        var objDM = self.obtener(paraIdCadena: objCadena.cadena_id!, enArrayCadena: arrayCadenas)
        
        if objDM == nil {
            
            objDM = NSEntityDescription.insertNewObject(forEntityName: "Cadena", into: contexto) as? Cadena
        }
        
        objDM!.cadena_id           = objCadena.cadena_id!
        objDM!.cadena_nombre       = objCadena.cadena_nombre!
        objDM!.cadena_descripcion      = objCadena.cadena_description!
        
        return objDM!
    }
    
    
    
    class func listarTodasLasCadenas(conContexto contexto : NSManagedObjectContext) -> NSArray {
        
        let fetchRequest : NSFetchRequest<Cadena> = Cadena.fetchRequest()
        let sortNombre = NSSortDescriptor(key: "cadena_nombre", ascending: true)
        
        fetchRequest.sortDescriptors = [sortNombre]
        
        do {
            return try contexto.fetch(fetchRequest as! NSFetchRequest<NSFetchRequestResult>) as NSArray
        }catch{
            return NSArray()
        }
    }

}
