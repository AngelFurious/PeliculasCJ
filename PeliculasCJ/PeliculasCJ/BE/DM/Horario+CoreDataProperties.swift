//
//  Horario+CoreDataProperties.swift
//  PeliculasCJ
//
//  Created by B303-21 on 24/11/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import Foundation
import CoreData

extension Horario {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Horario> {
        return NSFetchRequest<Horario>(entityName: "Horario");
    }

    @NSManaged public var horario_horario: String?
    @NSManaged public var pelicula: Pelicula?
    @NSManaged public var sucursal: Sucursal?

}
