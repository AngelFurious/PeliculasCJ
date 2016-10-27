//
//  Pelicula+CoreDataProperties.swift
//  PeliculasCJ
//
//  Created by B303-20 on 27/10/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import Foundation
import CoreData
import 

extension Pelicula {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pelicula> {
        return NSFetchRequest<Pelicula>(entityName: "Pelicula");
    }

    @NSManaged public var pelicula_id: String?
    @NSManaged public var pelicula_nombre: String?
    @NSManaged public var pelicula_resumen: String?
    @NSManaged public var horarios: Horario?

}
