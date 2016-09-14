//
//  ViewController.swift
//  Hola Mundo
//
//  Created by Javier  Amor De La Cruz on 8/9/16.
//  Copyright © 2016 Javier  Amor De La Cruz. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var Slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func updateHola(_ sender: UIButton) {
        msgLabel.text = "Hola"
        Slider.value=0.5
        mapView.mapType=MKMapType.hybrid
        sliderMoved(Slider)
        
    }
    
    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Mundo"
        
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)

        mapView.setRegion(reg, animated: true)
        mapView.mapType=MKMapType.satellite
    }
    
    @IBAction func mostrarPiramides(_ sender: UIButton) {
        msgLabel.text = "Pirámides"
        
        let center = CLLocationCoordinate2D(latitude: 29.9773008, longitude: 31.1303068)
        let span = MKCoordinateSpan(latitudeDelta: 0.012, longitudeDelta: 0.012)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
        mapView.mapType=MKMapType.satellite
    }

    

}

