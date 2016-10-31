//
//  CDMWebResponse.swift
//  PeliculasCJ
//
//  Created by B303-20 on 31/10/16.
//  Copyright © 2016 B303-20. All rights reserved.
//

import UIKit

class CDMWebResponse: NSObject {
    var respuestaJSON   : Any?
    var statusCode      : NSInteger?
    var respuestaNSData : Data?
    var error           : Error?
    var datosCabezera   : NSDictionary?
    var token           : NSString?
    var cookie          : NSString?
}
