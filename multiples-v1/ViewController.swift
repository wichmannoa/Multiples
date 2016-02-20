//
//  ViewController.swift
//  multiples-v1
//
//  Created by Otto on 2/19/16.
//  Copyright © 2016 Otto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var trail = 0;
    
    @IBOutlet weak var imgTitle: UIImageView!
    @IBOutlet weak var txtInputField: UITextField!
    @IBOutlet weak var lblEquation: UILabel!

    @IBOutlet weak var btnPlayOut: UIButton!
    @IBOutlet weak var btnAdd: UIButton!
    
    
   
    
    @IBAction func btnPlay(sender: AnyObject) {
        if txtInputField.text != nil && txtInputField.text != "" {
            btnAdd.hidden = false;
            imgTitle.hidden = true;
            txtInputField.hidden = true;
            btnPlayOut.hidden = true;
            lblEquation.hidden = false;
            
        }
    }
    @IBAction func btnAdd(sender: AnyObject) {
        let constante = Int(txtInputField.text!)!;
        let total = constante + trail;
        
        lblEquation.text = " \(trail) + \(constante) = \(total) ";
        
        trail += constante
    }
}

