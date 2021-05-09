//
//  ViewController.swift
//  Timelapse
//
//  Created by Connor Jones on 07/05/2021.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var imageView: NSImageView!
    @IBOutlet weak var timeSlider: NSSlider!
    
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
        imageView.image = images[3]
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func timeSliderDidChange(_ sender: NSSlider) {
        let sliderValue = Int(timeSlider.floatValue)
        let index = convertValueToIndex(sliderValue, intervals: numberOfImages)
        imageView.image = images[Int(index)]
    }
    
    private func convertValueToIndex(_ value: Int, intervals: Int) -> Float {
        return (Float(value) / 100) / (1 / Float(intervals))
    }
    
    private func setupSlider() {
        timeSlider.trackFillColor = NSColor.orange
        timeSlider.sliderType = .linear
//        timeSlider.t
    }

}

