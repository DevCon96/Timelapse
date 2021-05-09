//
//  CustomSlider.swift
//  Timelapse
//
//  Created by Connor Jones on 07/05/2021.
//

import Foundation
import AppKit

class CustomSlider: NSSlider {
    
    override func acceptsFirstMouse(for event: NSEvent?) -> Bool {
        super.acceptsFirstMouse(for: event)
    }
}
