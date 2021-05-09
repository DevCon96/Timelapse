//
//  ViewController.swift
//  Timelapse
//
//  Created by Connor Jones on 07/05/2021.
//

import Cocoa
import CoreGraphics

class ViewController: NSViewController {
    @IBOutlet weak var imageView: NSImageView!
    @IBOutlet weak var timeSlider: NSSlider!
    
    // All is driven by this array. More imagaes go here.
    let images: [NSImage] = [
        NSImage(named: "image0")!,
        NSImage(named: "image1")!,
        NSImage(named: "image2")!,
        NSImage(named: "image3")!,
        NSImage(named: "image4")!,
        NSImage(named: "image5")!,
        NSImage(named: "image6")!
    ]
    
    var numberOfImages: Int {
        return images.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
        imageView.image = images[Int(timeSlider.floatValue)]
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func timeSliderDidChange(_ sender: NSSlider) {
        let sliderValue = Int(timeSlider.floatValue)
        print("sliderValue = \(sliderValue)")
        guard sliderValue < numberOfImages else {
            imageView.image = images[numberOfImages - 1]
            return
        }
        
        imageView.image = images[Int(sliderValue)]
    }
    
    private func setupSlider() {
        timeSlider.trackFillColor = NSColor.orange
        timeSlider.sliderType = .linear
        timeSlider.minValue = 0
        timeSlider.maxValue = Double(numberOfImages)
        timeSlider.numberOfTickMarks = numberOfImages
    }

}

