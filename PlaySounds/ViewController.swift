//
//  ViewController.swift
//  SystemSoundPlayer
//
//  Created by ByteSlinger on 10/27/17.
//  Copyright © 2017 ByteSlinger. All rights reserved.
//

import UIKit
import AVFoundation

let VIBRATE_SOUND: SystemSoundID = kSystemSoundID_Vibrate
let WHOOSH_SOUND: SystemSoundID = 1001
let MAIL_SOUND: SystemSoundID = 1000
let HORN_SOUND: SystemSoundID = 1330
let TOCK_SOUND:  SystemSoundID = 1130
let TRAIN_SOUND:  SystemSoundID = 1323
let TWEET_SOUND:  SystemSoundID = 1016
let BELL_SOUND:  SystemSoundID = 1013

class ViewController: UIViewController {

    @IBOutlet weak var systemSoundID: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var vibrateButton: UIButton!
    @IBOutlet weak var whooshButton: UIButton!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var hornButton: UIButton!
    @IBOutlet weak var tockButton: UIButton!
    @IBOutlet weak var trainButton: UIButton!
    @IBOutlet weak var tweetButton: UIButton!
    @IBOutlet weak var bellButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playButton.layer.cornerRadius = 32
        self.vibrateButton.layer.cornerRadius = 16
        self.whooshButton.layer.cornerRadius = 16
        self.mailButton.layer.cornerRadius = 16
        self.hornButton.layer.cornerRadius = 16
        self.tockButton.layer.cornerRadius = 16
        self.trainButton.layer.cornerRadius = 16
        self.tweetButton.layer.cornerRadius = 16
        self.bellButton.layer.cornerRadius = 16
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textValueChanged(_ sender: UITextField) {
        if (self.systemSoundID.text != nil) {
            if (self.systemSoundID.text != "") {
                self.stepper.value = Double(self.systemSoundID.text!)!
            }
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        self.playASound(SystemSoundID(self.stepper.value))
    }
    
    @IBAction func playSound(_ sender: UIButton) {
        var soundID: SystemSoundID = 0
        
        if (self.systemSoundID.text != nil) {
            if (self.systemSoundID.text != "") {
                soundID = SystemSoundID(self.systemSoundID.text!)!
                
                self.playASound(soundID)
            }
        }
    }
    
    @IBAction func hideKeyboard(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    func playASound(_ sound: SystemSoundID) {
        self.hideKeyboard(self.view)
        
        self.systemSoundID.text = String(sound)
        self.stepper.value = Double(sound)
        
        AudioServicesPlaySystemSoundWithCompletion(sound, nil)
    }
    
    @IBAction func vibrateSound(_ sender: UIButton) {
        self.playASound(VIBRATE_SOUND)
    }
    
    @IBAction func whooshSound(_ sender: UIButton) {
        self.playASound(WHOOSH_SOUND)
    }
    
    @IBAction func mailSound(_ sender: UIButton) {
        self.playASound(MAIL_SOUND)
    }
    
    @IBAction func hornSound(_ sender: UIButton) {
        self.playASound(HORN_SOUND)
    }
    
    @IBAction func tockSound(_ sender: UIButton) {
        self.playASound(TOCK_SOUND)
    }
    
    @IBAction func trainSound(_ sender: UIButton) {
        self.playASound(TRAIN_SOUND)
    }
    
    @IBAction func tweetSound(_ sender: UIButton) {
        self.playASound(TWEET_SOUND)
    }
    
    @IBAction func bellSound(_ sender: UIButton) {
        self.playASound(BELL_SOUND)
    }
}

