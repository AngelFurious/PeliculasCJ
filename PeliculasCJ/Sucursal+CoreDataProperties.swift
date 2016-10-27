//
//  Sucursal+CoreDataProperties.swift
//  PeliculasCJ
//
//  Created by B303-20 on 27/10/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import Foundation
import CoreData
 

extension Sucursal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Sucursal> {
        return NSFetchRequest<Sucursal>(entityName: "Sucursal");
    }

    @NSManaged public var sucursal_id: String?
    @NSManaged public var sucursal_nombre: String?
    @NSManaged public var sucursal_direccion: String?
    @NSManaged public var horarios: Cadena?
    @NSManaged public var cadena: Horario?

}
