//
//  CampusMap.swift
//  Modeling_L
//
//  Created by lo_1mc on 2014/12/18.
//  Copyright (c) 2014年 ie_Team_L. All rights reserved.
//

import UIKit


class CampusMap: UIViewController, UIScrollViewDelegate{
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myScrollView: UIScrollView!
    @IBOutlet var ButtonView: UIView!
    let EducW = UIWindow()
    let EducB1 = UIButton()
    let EducB2 = UIButton()
    let EducB3 = UIButton()
    let EducB4 = UIButton()
    let EducC = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "全体マップ"
        self.navigationController?.navigationBar
        self.navigationController?.setNavigationBarHidden(true, animated: false)

        /*
        scrollView
        */
        var myScrollView = UIScrollView();
        myScrollView.delegate = self
        myScrollView.minimumZoomScale = 0.5
        myScrollView.maximumZoomScale = 3
        myScrollView.zoomScale = 0.5
        
        myScrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        
        // UIImageに画像を設定する.
        
        let myImage = UIImage(named: "CampusMap.jpg")
        
        // UIImageViewを生成する.
        var myImageView = UIImageView()
        
        // myImageViewのimageにmyImageを設定する.
        myImageView.image = myImage
        
        // frameの値を設定する.
        myImageView.frame = CGRectMake(0, 0, myImage!.size.width, myImage!.size.height)
        
        // ScrollViewにmyImageViewを追加する.
        myScrollView.addSubview(myImageView)
        
        
        
        /*
        共通棟遷移
        */
        var EducButton = UIButton()
        
        EducButton.frame = CGRectMake(0, 0, 190, 190)
        EducButton.layer.position = CGPoint(x: 1095, y: 275)
        EducButton.setTitle("共通教育棟", forState: UIControlState.Normal)
        EducButton.backgroundColor = UIColor.redColor()
        EducButton.addTarget(self, action: "onClickFacButton:", forControlEvents: .TouchUpInside)
        EducButton.tag = 1
        EducButton.userInteractionEnabled = true

        
        // ScrollViewにcontentSizeを設定する.
        myScrollView.contentSize = CGSizeMake(myImageView.frame.size.width, myImageView.frame.size.height)
        
        myScrollView.delaysContentTouches = false
        myScrollView.canCancelContentTouches = false
        

        
        // ButtonViewをSubViewにぶち込む
        myScrollView.addSubview(EducButton)
        
        // ViewにScrollViewをAddする.
        myScrollView.contentOffset = CGPoint(x: myImageView.frame.size.width/2, y: 0)
        self.view.addSubview(myScrollView)

        
    }
    
    
    /*
    ボタンイベント.
    */
    func onClickFacButton(sender: UIButton){
        println("FacButton clicked.")
        if sender.tag == 1 {
            println("Educ")
            makeEducWindow()
        }
        else{
            println("else...Maybe Error occered.")
        }
    }
    
    
    func makeEducWindow(){
        
        EducW.backgroundColor = UIColor.whiteColor()
        EducW.frame = CGRectMake(0, 0, 200, 400)
        EducW.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        EducW.alpha = 0.95
        EducW.layer.cornerRadius = 20
        
        EducW.makeKeyWindow()
        self.EducW.makeKeyAndVisible()
        
        EducB1.frame = CGRectMake(0, 0, 100, 40)
        EducB1.backgroundColor = UIColor.orangeColor()
        EducB1.setTitle("1号館", forState: .Normal)
        EducB1.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducB1.layer.masksToBounds = true
        EducB1.layer.cornerRadius = 20.0
        EducB1.layer.position = CGPointMake(self.EducW.frame.width/2, 50)
        EducB1.addTarget(self, action: "selectE:", forControlEvents: .TouchUpInside)
        EducB1.tag = 1
        self.EducW.addSubview(EducB1)
        
        EducB2.frame = CGRectMake(0, 0, 100, 40)
        EducB2.backgroundColor = UIColor.orangeColor()
        EducB2.setTitle("2号館", forState: .Normal)
        EducB2.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducB2.layer.masksToBounds = true
        EducB2.layer.cornerRadius = 20.0
        EducB2.layer.position = CGPointMake(self.EducW.frame.width/2, 100)
        EducB2.addTarget(self, action: "selectE:", forControlEvents: .TouchUpInside)
        EducB2.tag = 2
        self.EducW.addSubview(EducB2)
        
        EducB3.frame = CGRectMake(0, 0, 100, 40)
        EducB3.backgroundColor = UIColor.orangeColor()
        EducB3.setTitle("3号館", forState: .Normal)
        EducB3.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducB3.layer.masksToBounds = true
        EducB3.layer.cornerRadius = 20.0
        EducB3.layer.position = CGPointMake(self.EducW.frame.width/2, 150)
        EducB3.addTarget(self, action: "selectE:", forControlEvents: .TouchUpInside)
        EducB3.tag = 3
        self.EducW.addSubview(EducB3)
        
        EducB4.frame = CGRectMake(0, 0, 100, 40)
        EducB4.backgroundColor = UIColor.orangeColor()
        EducB4.setTitle("4号館", forState: .Normal)
        EducB4.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducB4.layer.masksToBounds = true
        EducB4.layer.cornerRadius = 20.0
        EducB4.layer.position = CGPointMake(self.EducW.frame.width/2, 200)
        EducB4.addTarget(self, action: "selectE:", forControlEvents: .TouchUpInside)
        EducB4.tag = 1
        self.EducW.addSubview(EducB4)
        
        EducC.frame = CGRectMake(0, 0, 100, 40)
        EducC.backgroundColor = UIColor.orangeColor()
        EducC.setTitle("戻る", forState: .Normal)
        EducC.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducC.layer.masksToBounds = true
        EducC.layer.cornerRadius = 20.0
        EducC.layer.position = CGPointMake(self.EducW.frame.width/2, self.EducW.frame.height-50)
        EducC.addTarget(self, action: "selectE:", forControlEvents: .TouchUpInside)
        EducC.tag = 10
        self.EducW.addSubview(EducC)
        
    }
    
    func selectE(sender: UIButton){
        if sender.tag == 1 {
            var nextViewController: UIViewController = Educ1_1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            EducW.hidden = true
        }
        if sender.tag == 10{
            EducW.hidden = true
        }
    }

}