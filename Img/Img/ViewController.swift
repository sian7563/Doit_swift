//
//  ViewController.swift
//  Img
//
//  Created by kimsian on 2021/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet var ImgView: UIImageView!
    @IBOutlet var BtnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on.jpeg")
        imgOff = UIImage(named: "lamp_off.jpeg")
        
        ImgView.image = imgOn
    }

    @IBAction func BtnResizeImage(_ sender: UIButton) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat, newHeight: CGFloat
        
        if(isZoom) {
            newWidth = ImgView.frame.width/scale
            newHeight = ImgView.frame.height/scale
            BtnResize.setTitle("확대", for: .normal)
        }
        else {
            newWidth = ImgView.frame.width*scale
            newHeight = ImgView.frame.height*scale
            BtnResize.setTitle("축소", for: .normal)
        }
        ImgView.frame.size = CGSize(width: newWidth, height: newWidth)
        isZoom = !isZoom
    }
    
    
    @IBAction func SwitchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            ImgView.image = imgOn
        }
        else
        {
            ImgView.image = imgOff
        }
    }
}

