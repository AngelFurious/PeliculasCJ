//
//  Cadena+CoreDataProperties.swift
//  PeliculasCJ
//
//  Created by B303-20 on 31/10/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import Foundation
import CoreData

extension Cadena {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cadena> {
        return NSFetchRequest<Cadena>(entityName: "Cadena");
    }

    @NSManaged public var cadena_descripcion: String?
    @NSManaged public var cadena_id: String?
    @NSManaged public var cadena_nombre: String?
    @NSManaged public var cadena_urlImagen: String?
    @NSManaged public var sucursales: Sucursal?

}
