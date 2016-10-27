//
//  Horario+CoreDataProperties.swift
//  PeliculasCJ
//
//  Created by B303-20 on 27/10/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import Foundation
import CoreData
import 

extension Horario {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Horario> {
        return NSFetchRequest<Horario>(entityName: "Horario");
    }

    @NSManaged public var horario_horario: String?
    @NSManaged public var pelicula: Pelicula?
    @NSManaged public var sucursal: Sucursal?

}
