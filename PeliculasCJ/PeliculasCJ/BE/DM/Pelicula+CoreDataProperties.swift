//
//  Pelicula+CoreDataProperties.swift
//  PeliculasCJ
//
//  Created by B303-21 on 24/11/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import Foundation
import CoreData

extension Pelicula {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pelicula> {
        return NSFetchRequest<Pelicula>(entityName: "Pelicula");
    }

    @NSManaged public var pelicula_id: String?
    @NSManaged public var pelicula_nombre: String?
    @NSManaged public var pelicula_resumen: String?
    @NSManaged public var pelicula_urlImagen: String?
    @NSManaged public var pelicula_horario: String?
    @NSManaged public var horarios: NSSet?

}

// MARK: Generated accessors for horarios
extension Pelicula {

    @objc(addHorariosObject:)
    @NSManaged public func addToHorarios(_ value: Horario)

    @objc(removeHorariosObject:)
    @NSManaged public func removeFromHorarios(_ value: Horario)

    @objc(addHorarios:)
    @NSManaged public func addToHorarios(_ values: NSSet)

    @objc(removeHorarios:)
    @NSManaged public func removeFromHorarios(_ values: NSSet)

}
