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
    
    let shW = UIWindow()
    let shB1 = UIButton()
    let shB2 = UIButton()
    let shB3 = UIButton()
    
    let LLW = UIWindow()
    let LLB1 = UIButton()
    let LLB2 = UIButton()
    let LLB3 = UIButton()

    
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
        myScrollView.maximumZoomScale = 1.0
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
        //EducButton.setTitle("共通教育棟", forState: UIControlState.Normal)
        //EducButton.backgroundColor = UIColor.redColor()
        EducButton.addTarget(self, action: "onClickFacButton:", forControlEvents: .TouchUpInside)
        EducButton.tag = 1
        EducButton.userInteractionEnabled = true
        
        
        // 大学会館
        var shButton = UIButton()
        
        shButton.frame = CGRectMake(0, 0, 300, 100)
        shButton.layer.position = CGPoint(x: 890, y: 450)
        //shButton.setTitle("大学会館/生協/図書館", forState: UIControlState.Normal)
        //shButton.backgroundColor = UIColor.redColor()
        shButton.addTarget(self, action: "onClickFacButton:", forControlEvents: .TouchUpInside)
        shButton.tag = 2
        shButton.userInteractionEnabled = true
        
        //法文・観光
        var LLButton = UIButton()
        
        LLButton.frame = CGRectMake(0, 0, 190, 190)
        LLButton.layer.position = CGPoint(x: 1165, y: 520)
        //LLButton.setTitle("法文/観光", forState: UIControlState.Normal)
        //LLButton.backgroundColor = UIColor.redColor()
        LLButton.addTarget(self, action: "onClickFacButton:", forControlEvents: .TouchUpInside)
        LLButton.tag = 3
        LLButton.userInteractionEnabled = true
        

        
        // ScrollViewにcontentSizeを設定する.
        myScrollView.contentSize = CGSizeMake(myImageView.frame.size.width, myImageView.frame.size.height)
        
        myScrollView.delaysContentTouches = true
        myScrollView.canCancelContentTouches = true
        myScrollView.userInteractionEnabled = true

        
        // ButtonViewをSubViewにぶち込む
        myScrollView.addSubview(EducButton)
        myScrollView.addSubview(shButton)
        myScrollView.addSubview(LLButton)
        
        // ViewにScrollViewをAddする.
        myScrollView.contentOffset = CGPoint(x: myImageView.frame.size.width/2, y: 0)
        self.view.addSubview(myScrollView)

        
    }
    
    
    /*
    学部選択.
    */
    func onClickFacButton(sender: UIButton){
        println("FacButton clicked.")
        if sender.tag == 1 {
            println("Educ")
            makeEducWindow()
        }
        else if sender.tag == 2 {
            println("StudentHall")
            makeSHWindow()
        }
        else if sender.tag == 3 {
            println("Law and Tourism")
            makeLLWindow()
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
        EducB4.tag = 4
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
        if sender.tag == 2 {
            var nextViewController: UIViewController = Educ2_1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            EducW.hidden = true
        }
        if sender.tag == 3 {
            var nextViewController: UIViewController = Educ3_1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            EducW.hidden = true
        }
        if sender.tag == 4 {
            var nextViewController: UIViewController = Educ4_1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            EducW.hidden = true
        }
        if sender.tag == 10{
            EducW.hidden = true
        }
    }
    
    func makeSHWindow(){
        
        shW.backgroundColor = UIColor.whiteColor()
        shW.frame = CGRectMake(0, 0, 200, 400)
        shW.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        shW.alpha = 0.95
        shW.layer.cornerRadius = 20
        
        shW.makeKeyWindow()
        self.shW.makeKeyAndVisible()
        
        shB1.frame = CGRectMake(0, 0, 100, 40)
        shB1.backgroundColor = UIColor.orangeColor()
        shB1.setTitle("大学会館", forState: .Normal)
        shB1.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        shB1.layer.masksToBounds = true
        shB1.layer.cornerRadius = 20.0
        shB1.layer.position = CGPointMake(self.shW.frame.width/2, 50)
        shB1.addTarget(self, action: "selectSH:", forControlEvents: .TouchUpInside)
        shB1.tag = 1
        self.shW.addSubview(shB1)
        
        shB2.frame = CGRectMake(0, 0, 100, 40)
        shB2.backgroundColor = UIColor.orangeColor()
        shB2.setTitle("中央生協", forState: .Normal)
        shB2.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        shB2.layer.masksToBounds = true
        shB2.layer.cornerRadius = 20.0
        shB2.layer.position = CGPointMake(self.shW.frame.width/2, 100)
        shB2.addTarget(self, action: "selectSH:", forControlEvents: .TouchUpInside)
        shB2.tag = 2
        self.shW.addSubview(shB2)
        
        shB3.frame = CGRectMake(0, 0, 100, 40)
        shB3.backgroundColor = UIColor.orangeColor()
        shB3.setTitle("大学図書館", forState: .Normal)
        shB3.setTitleColor(UIColor.grayColor(), forState: .Normal)
        shB3.layer.masksToBounds = true
        shB3.layer.cornerRadius = 20.0
        shB3.layer.position = CGPointMake(self.shW.frame.width/2, 150)
        shB3.addTarget(self, action: "selectSH:", forControlEvents: .TouchUpInside)
        shB3.tag = 3
        self.shW.addSubview(shB3)
        
        EducC.frame = CGRectMake(0, 0, 100, 40)
        EducC.backgroundColor = UIColor.orangeColor()
        EducC.setTitle("戻る", forState: .Normal)
        EducC.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducC.layer.masksToBounds = true
        EducC.layer.cornerRadius = 20.0
        EducC.layer.position = CGPointMake(self.shW.frame.width/2, self.shW.frame.height-50)
        EducC.addTarget(self, action: "selectSH:", forControlEvents: .TouchUpInside)
        EducC.tag = 10
        self.shW.addSubview(EducC)
        
    }
    
    func selectSH(sender: UIButton){
        if sender.tag == 1 {
            var nextViewController: UIViewController = sh1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            shW.hidden = true
        }
        if sender.tag == 2 {
            var nextViewController: UIViewController = cc1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            shW.hidden = true
        }
        if sender.tag == 10{
            shW.hidden = true
        }
    }
    
    func makeLLWindow(){
        
        LLW.backgroundColor = UIColor.whiteColor()
        LLW.frame = CGRectMake(0, 0, 200, 400)
        LLW.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        LLW.alpha = 0.95
        LLW.layer.cornerRadius = 20
        
        LLW.makeKeyWindow()
        self.LLW.makeKeyAndVisible()
        
        LLB1.frame = CGRectMake(0, 0, 180, 40)
        LLB1.backgroundColor = UIColor.orangeColor()
        LLB1.setTitle("法文棟", forState: .Normal)
        LLB1.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        LLB1.layer.masksToBounds = true
        LLB1.layer.cornerRadius = 20.0
        LLB1.layer.position = CGPointMake(self.LLW.frame.width/2, 50)
        LLB1.addTarget(self, action: "selectLL:", forControlEvents: .TouchUpInside)
        LLB1.tag = 1
        self.LLW.addSubview(LLB1)
        
        LLB2.frame = CGRectMake(0, 0, 180, 40)
        LLB2.backgroundColor = UIColor.orangeColor()
        LLB2.setTitle("法文新棟", forState: .Normal)
        LLB2.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        LLB2.layer.masksToBounds = true
        LLB2.layer.cornerRadius = 20.0
        LLB2.layer.position = CGPointMake(self.LLW.frame.width/2, 100)
        LLB2.addTarget(self, action: "selectLL:", forControlEvents: .TouchUpInside)
        LLB2.tag = 2
        self.LLW.addSubview(LLB2)
        
        LLB3.frame = CGRectMake(0, 0, 180, 40)
        LLB3.backgroundColor = UIColor.orangeColor()
        LLB3.setTitle("文系総合研究棟", forState: .Normal)
        LLB3.setTitleColor(UIColor.grayColor(), forState: .Normal)
        LLB3.layer.masksToBounds = true
        LLB3.layer.cornerRadius = 20.0
        LLB3.layer.position = CGPointMake(self.LLW.frame.width/2, 150)
        LLB3.addTarget(self, action: "selectLL:", forControlEvents: .TouchUpInside)
        LLB3.tag = 3
        self.LLW.addSubview(LLB3)
        
        EducC.frame = CGRectMake(0, 0, 180, 40)
        EducC.backgroundColor = UIColor.orangeColor()
        EducC.setTitle("戻る", forState: .Normal)
        EducC.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducC.layer.masksToBounds = true
        EducC.layer.cornerRadius = 20.0
        EducC.layer.position = CGPointMake(self.LLW.frame.width/2, self.LLW.frame.height-50)
        EducC.addTarget(self, action: "selectLL:", forControlEvents: .TouchUpInside)
        EducC.tag = 10
        self.LLW.addSubview(EducC)
        
    }
    
    func selectLL(sender: UIButton){
        /*if sender.tag == 1 {
            var nextViewController: UIViewController = Educ1_1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            EducW.hidden = true
        }
        if sender.tag == 2 {
            var nextViewController: UIViewController = Educ2_1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            EducW.hidden = true
        }
        if sender.tag == 3 {
            var nextViewController: UIViewController = Educ3_1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            EducW.hidden = true
        }*/
        if sender.tag == 10{
            LLW.hidden = true
        }
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        print("pinch")
        return myScrollView
    }

}