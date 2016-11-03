//
//  Sucursal+CoreDataProperties.swift
//  PeliculasCJ
//
//  Created by B303-20 on 3/11/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import Foundation
import CoreData


extension Sucursal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Sucursal> {
        return NSFetchRequest<Sucursal>(entityName: "Sucursal");
    }

    @NSManaged public var sucursal_direccion: String?
    @NSManaged public var sucursal_id: String?
    @NSManaged public var sucursal_nombre: String?
    @NSManaged public var cadena: NSSet?
    @NSManaged public var horarios: NSSet?

}

// MARK: Generated accessors for cadena
extension Sucursal {

    @objc(addCadenaObject:)
    @NSManaged public func addToCadena(_ value: Cadena)

    @objc(removeCadenaObject:)
    @NSManaged public func removeFromCadena(_ value: Cadena)

    @objc(addCadena:)
    @NSManaged public func addToCadena(_ values: NSSet)

    @objc(removeCadena:)
    @NSManaged public func removeFromCadena(_ values: NSSet)

}

// MARK: Generated accessors for horarios
extension Sucursal {

    @objc(addHorariosObject:)
    @NSManaged public func addToHorarios(_ value: Horario)

    @objc(removeHorariosObject:)
    @NSManaged public func removeFromHorarios(_ value: Horario)

    @objc(addHorarios:)
    @NSManaged public func addToHorarios(_ values: NSSet)

    @objc(removeHorarios:)
    @NSManaged public func removeFromHorarios(_ values: NSSet)

}
