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

	override func viewDidLoad() {
		super.viewDidLoad()
		videoCamera.addTarget(cameraOutput)
		videoCamera.startCameraCapture()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

