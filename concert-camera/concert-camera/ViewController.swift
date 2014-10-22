//
//  ViewController.swift
//  concert-camera
//
//  Created by Ivan Milles on 22/10/14.
//  Copyright (c) 2014 Ivan Milles. All rights reserved.
//

import UIKit
import GPUImage

class ViewController: UIViewController {
	@IBOutlet weak var cameraOutput: GPUImageView!
	var videoCamera: GPUImageVideoCamera = GPUImageVideoCamera(sessionPreset: AVCaptureSessionPreset1280x720,
															  cameraPosition: AVCaptureDevicePosition.Back);
	var edgeFilter: GPUImagePrewittEdgeDetectionFilter!
	var colorCombiner: GPUImageMaskFilter!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		edgeFilter = GPUImagePrewittEdgeDetectionFilter()
		colorCombiner = GPUImageMaskFilter()
		
		videoCamera.addTarget(edgeFilter)
		
		videoCamera.addTarget(colorCombiner)
		edgeFilter.addTarget(colorCombiner)
		
		colorCombiner.addTarget(cameraOutput)
		
		videoCamera.startCameraCapture()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

