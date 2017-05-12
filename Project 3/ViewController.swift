//
//  ViewController.swift
//  Project 3
//
//  Created by Nehal Rawat on 18/10/15.
//  Copyright © 2015 Nehal Rawat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func redSquareArena(sender: UIButton) {
    }
    
    @IBAction func unwindToMainView(sender: UIStoryboardSegue) {
        
    }

    @IBAction func randomColorArena(sender: UIButton) {
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let v = segue.destinationViewController as! ShapeViewController
        if segue.identifier == "RedSegue" {
            v.color = UIColor.redColor()
        }
        
        else if segue.identifier == "BlueSegue" {
            v.color = UIColor.blueColor()
        }
        
        else {
            v.isRandomColor = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

