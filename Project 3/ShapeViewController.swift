//
//  ShapeViewController.swift
//  Project 3
//
//  Created by Nehal Rawat on 18/10/15.
//  Copyright © 2015 Nehal Rawat. All rights reserved.
//

import UIKit

class ShapeViewController: UIViewController {
    
    @IBOutlet weak var Slider: UISlider!
    var isRandomColor = false
    
    var color = UIColor.redColor()
    
    func randomColor() -> UIColor{
        
        let redRandom:CGFloat = CGFloat(drand48())
        let greenRandom:CGFloat = CGFloat(drand48())
        let blueRandom: CGFloat = CGFloat(drand48())
        return UIColor(red: redRandom, green: greenRandom, blue: blueRandom, alpha: 1.0)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let value = Int(Slider.value)
        let location = touches.first!.locationInView(view)
        let greenView = UIView(frame: CGRect(x: 0, y: 0, width: value, height: value))
        greenView.center = location
        greenView.backgroundColor = isRandomColor ? randomColor() : color 
        view.addSubview(greenView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
