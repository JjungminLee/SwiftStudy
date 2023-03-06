//
//  ViewController.swift
//  ImageView
//
//  Created by 이정민 on 2023/03/07.
//

import UIKit

class ViewController: UIViewController {
    
    var isZoom=false
    var imgOn:UIImage?
    var imgOff:UIImage?

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgOn=UIImage(named:"pramod-tiwari--JCBgIGjGEA-unsplash.jpg")
        imgOff=UIImage(named:"marek-piwnicki-AnQvGXBQ__g-unsplash.jpg")
        imgView.image=imgOn
        // Do any additional setup after loading the view.
    }

    @IBAction func btnResizeImg(_ sender: UIButton) {

        let scale:CGFloat=2.0 // 배율 값 의미
        var newWidth:CGFloat,newHeight:CGFloat //확대또는 축소했을 때 이미지의 가로,세로 길이 저장
        
        if(isZoom){// 현재 확대된 그림인경우 -> 축소해야함
            newWidth=imgView.frame.width/scale
            newHeight=imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
        }else{ // 현재 축소된 그림인 경우 -> 확대해야함
            newWidth=imgView.frame.width*scale
            newHeight=imgView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)
        }
        imgView.frame.size=CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func swtichImgOnOff(_ sender: UISwitch) {
        if sender.isOn{
            imgView.image=imgOn
        }else{
            imgView.image=imgOff
        }
    }
}

