//
//  SucursalDALC.swift
//  PeliculasCJ
//
//  Created by B303-20 on 31/10/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit
import CoreData

class SucursalDALC: NSObject {
    class func obtener(porIdSucursal idSucursal : String, enArraySucursales arraySucursales : NSArray) -> Sucursal?{
        
        if arraySucursales.count == 0 {
            return nil
        }
        
        let predicado = NSPredicate(format: "sucursal_id == %@", idSucursal)
        let arrayResultado = arraySucursales.filtered(using: predicado)
        
        return arrayResultado.count != 0 ? arrayResultado[0] as? Sucursal : nil
    }
    
    
    
    
    @discardableResult class func agregar(sucursales objSucursal : SucursalBE, enArraySucursales arraySucursales : NSArray,  conContexto contexto : NSManagedObjectContext) -> Sucursal{
        
        var objDM = self.obtener(porIdSucursal: objSucursal.sucursal_id!, enArraySucursales: arraySucursales)
        
        if objDM == nil {
            
            objDM = NSEntityDescription.insertNewObject(forEntityName: "Sucursal", into: contexto) as? Sucursal
        }
        
        objDM?.sucursal_id = objSucursal.sucursal_id!
        objDM?.sucursal_nombre = objSucursal.sucursal_nombre!
        
        return objDM!
    }
    
    
    
    class func listarTodasLasSucursales(conContexto contexto : NSManagedObjectContext) -> NSArray {
        
        let fetchRequest : NSFetchRequest<Sucursal> = Sucursal.fetchRequest()
        let sortNombre = NSSortDescriptor(key: "sucursal_nombre", ascending: true)
        
        fetchRequest.sortDescriptors = [sortNombre]
        
        do {
            return try contexto.fetch(fetchRequest as! NSFetchRequest<NSFetchRequestResult>) as NSArray
        }catch{
            return NSArray()
        }
    }

}
