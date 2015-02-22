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
    
    let EEW = UIWindow()
    let EEB1 = UIButton()
    let EEB2 = UIButton()
    let EEB3 = UIButton()
    
    let agrW = UIWindow()
    let agrB1 = UIButton()
    let agrB2 = UIButton()
    let agrB3 = UIButton()
    let agrB4 = UIButton()
    
    let SciW = UIWindow()
    let SciB1 = UIButton()
    let SciB2 = UIButton()
    let SciB3 = UIButton()
    
    let engW = UIWindow()
    let engB1 = UIButton()
    let engB2 = UIButton()
    let engB3 = UIButton()
    let engB4 = UIButton()


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
        
        //教育学部
        var EEButton = UIButton()
        
        EEButton.frame = CGRectMake(0, 0, 320, 150)
        EEButton.layer.position = CGPoint(x: 910, y: 650)
        //EEButton.backgroundColor = UIColor.redColor()
        EEButton.addTarget(self, action: "onClickFacButton:", forControlEvents: .TouchUpInside)
        EEButton.tag = 4
        EEButton.userInteractionEnabled = true
        
        //農学部
        var agrButton = UIButton()
        agrButton.frame = CGRectMake(0, 0, 325, 240)
        agrButton.layer.position = CGPoint(x: 350, y: 495)
        //agrButton.backgroundColor = UIColor.redColor()
        agrButton.addTarget(self, action: "onClickFacButton:", forControlEvents: .TouchUpInside)
        agrButton.tag = 5
        agrButton.userInteractionEnabled = true
        
        
        //理学部
        var SciButton = UIButton()
        SciButton.frame = CGRectMake(0, 0, 300, 240)
        SciButton.layer.position = CGPoint(x: 835, y: 220)
        //SciButton.backgroundColor = UIColor.redColor()
        SciButton.addTarget(self, action: "onClickFacButton:", forControlEvents: .TouchUpInside)
        SciButton.tag = 6
        SciButton.userInteractionEnabled = true
        
        
        //工学部
        var engButton = UIButton()
        engButton.frame = CGRectMake(0, 0, 250, 250)
        engButton.layer.position = CGPoint(x: 320, y: 190)
        //engButton.backgroundColor = UIColor.redColor()
        engButton.addTarget(self, action: "onClickFacButton:", forControlEvents: .TouchUpInside)
        engButton.tag = 7
        engButton.userInteractionEnabled = true
        

        
        // ScrollViewにcontentSizeを設定する.
        myScrollView.contentSize = CGSizeMake(myImageView.frame.size.width, myImageView.frame.size.height)
        
        myScrollView.delaysContentTouches = true
        myScrollView.canCancelContentTouches = true
        myScrollView.userInteractionEnabled = true

        
        // ButtonViewをSubViewにぶち込む
        myScrollView.addSubview(EducButton)
        myScrollView.addSubview(shButton)
        myScrollView.addSubview(LLButton)
        myScrollView.addSubview(EEButton)
        myScrollView.addSubview(agrButton)
        myScrollView.addSubview(SciButton)
        myScrollView.addSubview(engButton)
        
        // ViewにScrollViewをAddする.
        myScrollView.contentOffset = CGPoint(x: 800, y: 0)
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
        else if sender.tag == 4 {
            println("EE")
            makeEEWindow()
        }
        else if sender.tag == 5 {
            println("Agriculture")
            makeAgrWindow()
        }
        else if sender.tag == 6 {
            println("Science")
            makeSciWindow()
        }
        else if sender.tag == 7 {
            println("Engineering")
            makeEngWindow()
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
        LLB1.setTitleColor(UIColor.grayColor(), forState: .Normal)
        LLB1.layer.masksToBounds = true
        LLB1.layer.cornerRadius = 20.0
        LLB1.layer.position = CGPointMake(self.LLW.frame.width/2, 50)
        LLB1.addTarget(self, action: "selectLL:", forControlEvents: .TouchUpInside)
        LLB1.tag = 1
        self.LLW.addSubview(LLB1)
        
        LLB2.frame = CGRectMake(0, 0, 180, 40)
        LLB2.backgroundColor = UIColor.orangeColor()
        LLB2.setTitle("法文新棟", forState: .Normal)
        LLB2.setTitleColor(UIColor.grayColor(), forState: .Normal)
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
    
    
    func makeEEWindow(){
        
        EEW.backgroundColor = UIColor.whiteColor()
        EEW.frame = CGRectMake(0, 0, 200, 400)
        EEW.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        EEW.alpha = 0.95
        EEW.layer.cornerRadius = 20
        
        EEW.makeKeyWindow()
        self.EEW.makeKeyAndVisible()
        
        EEB1.frame = CGRectMake(0, 0, 100, 40)
        EEB1.backgroundColor = UIColor.orangeColor()
        EEB1.setTitle("1号館", forState: .Normal)
        EEB1.setTitleColor(UIColor.grayColor(), forState: .Normal)
        EEB1.layer.masksToBounds = true
        EEB1.layer.cornerRadius = 20.0
        EEB1.layer.position = CGPointMake(self.EEW.frame.width/2, 50)
        EEB1.addTarget(self, action: "selectEE:", forControlEvents: .TouchUpInside)
        EEB1.tag = 1
        self.EEW.addSubview(EEB1)
        
        EEB2.frame = CGRectMake(0, 0, 100, 40)
        EEB2.backgroundColor = UIColor.orangeColor()
        EEB2.setTitle("2号館", forState: .Normal)
        EEB2.setTitleColor(UIColor.grayColor(), forState: .Normal)
        EEB2.layer.masksToBounds = true
        EEB2.layer.cornerRadius = 20.0
        EEB2.layer.position = CGPointMake(self.EEW.frame.width/2, 100)
        EEB2.addTarget(self, action: "selectEE:", forControlEvents: .TouchUpInside)
        EEB2.tag = 2
        self.EEW.addSubview(EEB2)
        
        EEB3.frame = CGRectMake(0, 0, 100, 40)
        EEB3.backgroundColor = UIColor.orangeColor()
        EEB3.setTitle("3号館", forState: .Normal)
        EEB3.setTitleColor(UIColor.grayColor(), forState: .Normal)
        EEB3.layer.masksToBounds = true
        EEB3.layer.cornerRadius = 20.0
        EEB3.layer.position = CGPointMake(self.EEW.frame.width/2, 150)
        EEB3.addTarget(self, action: "selectEE:", forControlEvents: .TouchUpInside)
        EEB3.tag = 3
        self.EEW.addSubview(EEB3)
        
        EducC.frame = CGRectMake(0, 0, 100, 40)
        EducC.backgroundColor = UIColor.orangeColor()
        EducC.setTitle("戻る", forState: .Normal)
        EducC.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducC.layer.masksToBounds = true
        EducC.layer.cornerRadius = 20.0
        EducC.layer.position = CGPointMake(self.EEW.frame.width/2, self.EEW.frame.height-50)
        EducC.addTarget(self, action: "selectEE:", forControlEvents: .TouchUpInside)
        EducC.tag = 10
        self.EEW.addSubview(EducC)
        
    }
    
    func selectEE(sender: UIButton){
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
            EEW.hidden = true
        }
    }
    
    func makeAgrWindow(){
        
        agrW.backgroundColor = UIColor.whiteColor()
        agrW.frame = CGRectMake(0, 0, 200, 400)
        agrW.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        agrW.alpha = 0.95
        agrW.layer.cornerRadius = 20
        
        agrW.makeKeyWindow()
        self.agrW.makeKeyAndVisible()
        
        agrB1.frame = CGRectMake(0, 0, 180, 40)
        agrB1.backgroundColor = UIColor.orangeColor()
        agrB1.setTitle("本館", forState: .Normal)
        agrB1.setTitleColor(UIColor.grayColor(), forState: .Normal)
        agrB1.layer.masksToBounds = true
        agrB1.layer.cornerRadius = 20.0
        agrB1.layer.position = CGPointMake(self.agrW.frame.width/2, 50)
        agrB1.addTarget(self, action: "selectAgr:", forControlEvents: .TouchUpInside)
        agrB1.tag = 1
        self.agrW.addSubview(agrB1)
        
        agrB2.frame = CGRectMake(0, 0, 180, 40)
        agrB2.backgroundColor = UIColor.orangeColor()
        agrB2.setTitle("COMB1号館", forState: .Normal)
        agrB2.setTitleColor(UIColor.grayColor(), forState: .Normal)
        agrB2.layer.masksToBounds = true
        agrB2.layer.cornerRadius = 20.0
        agrB2.layer.position = CGPointMake(self.agrW.frame.width/2, 100)
        agrB2.addTarget(self, action: "selectAgr:", forControlEvents: .TouchUpInside)
        agrB2.tag = 2
        self.agrW.addSubview(agrB2)
        
        agrB3.frame = CGRectMake(0, 0, 180, 40)
        agrB3.backgroundColor = UIColor.orangeColor()
        agrB3.setTitle("COMB2号館", forState: .Normal)
        agrB3.setTitleColor(UIColor.grayColor(), forState: .Normal)
        agrB3.layer.masksToBounds = true
        agrB3.layer.cornerRadius = 20.0
        agrB3.layer.position = CGPointMake(self.agrW.frame.width/2, 150)
        agrB3.addTarget(self, action: "selectAgr:", forControlEvents: .TouchUpInside)
        agrB3.tag = 3
        self.agrW.addSubview(agrB3)
        
        agrB4.frame = CGRectMake(0, 0, 180, 40)
        agrB4.backgroundColor = UIColor.orangeColor()
        agrB4.setTitle("風樹館", forState: .Normal)
        agrB4.setTitleColor(UIColor.grayColor(), forState: .Normal)
        agrB4.layer.masksToBounds = true
        agrB4.layer.cornerRadius = 20.0
        agrB4.layer.position = CGPointMake(self.agrW.frame.width/2, 200)
        agrB4.addTarget(self, action: "selectAgr:", forControlEvents: .TouchUpInside)
        agrB4.tag = 4
        self.agrW.addSubview(agrB4)
        
        EducC.frame = CGRectMake(0, 0, 180, 40)
        EducC.backgroundColor = UIColor.orangeColor()
        EducC.setTitle("戻る", forState: .Normal)
        EducC.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducC.layer.masksToBounds = true
        EducC.layer.cornerRadius = 20.0
        EducC.layer.position = CGPointMake(self.agrW.frame.width/2, self.agrW.frame.height-50)
        EducC.addTarget(self, action: "selectAgr:", forControlEvents: .TouchUpInside)
        EducC.tag = 10
        self.agrW.addSubview(EducC)
        
    }
    
    func selectAgr(sender: UIButton){
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
        }
        if sender.tag == 4 {
            var nextViewController: UIViewController = Educ4_1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            EducW.hidden = true
        }*/
        if sender.tag == 10{
            agrW.hidden = true
        }
    }
    
    func makeSciWindow(){
        
        SciW.backgroundColor = UIColor.whiteColor()
        SciW.frame = CGRectMake(0, 0, 200, 400)
        SciW.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        SciW.alpha = 0.95
        SciW.layer.cornerRadius = 20
        
        SciW.makeKeyWindow()
        self.SciW.makeKeyAndVisible()
        
        SciB1.frame = CGRectMake(0, 0, 180, 40)
        SciB1.backgroundColor = UIColor.orangeColor()
        SciB1.setTitle("本館", forState: .Normal)
        SciB1.setTitleColor(UIColor.grayColor(), forState: .Normal)
        SciB1.layer.masksToBounds = true
        SciB1.layer.cornerRadius = 20.0
        SciB1.layer.position = CGPointMake(self.SciW.frame.width/2, 50)
        SciB1.addTarget(self, action: "selectAgr:", forControlEvents: .TouchUpInside)
        SciB1.tag = 1
        self.SciW.addSubview(SciB1)
        
        SciB2.frame = CGRectMake(0, 0, 180, 40)
        SciB2.backgroundColor = UIColor.orangeColor()
        SciB2.setTitle("別館", forState: .Normal)
        SciB2.setTitleColor(UIColor.grayColor(), forState: .Normal)
        SciB2.layer.masksToBounds = true
        SciB2.layer.cornerRadius = 20.0
        SciB2.layer.position = CGPointMake(self.SciW.frame.width/2, 100)
        SciB2.addTarget(self, action: "selectAgr:", forControlEvents: .TouchUpInside)
        SciB2.tag = 2
        self.SciW.addSubview(SciB2)
        
        SciB3.frame = CGRectMake(0, 0, 180, 40)
        SciB3.backgroundColor = UIColor.orangeColor()
        SciB3.setTitle("理系総合研究棟", forState: .Normal)
        SciB3.setTitleColor(UIColor.grayColor(), forState: .Normal)
        SciB3.layer.masksToBounds = true
        SciB3.layer.cornerRadius = 20.0
        SciB3.layer.position = CGPointMake(self.SciW.frame.width/2, 150)
        SciB3.addTarget(self, action: "selectSci:", forControlEvents: .TouchUpInside)
        SciB3.tag = 3
        self.SciW.addSubview(SciB3)
        
        EducC.frame = CGRectMake(0, 0, 180, 40)
        EducC.backgroundColor = UIColor.orangeColor()
        EducC.setTitle("戻る", forState: .Normal)
        EducC.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducC.layer.masksToBounds = true
        EducC.layer.cornerRadius = 20.0
        EducC.layer.position = CGPointMake(self.SciW.frame.width/2, self.SciW.frame.height-50)
        EducC.addTarget(self, action: "selectSci:", forControlEvents: .TouchUpInside)
        EducC.tag = 10
        self.SciW.addSubview(EducC)
        
    }
    
    func selectSci(sender: UIButton){
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
        }
        if sender.tag == 4 {
        var nextViewController: UIViewController = Educ4_1()
        self.presentViewController(nextViewController, animated: false, completion: nil)
        EducW.hidden = true
        }*/
        if sender.tag == 10{
            SciW.hidden = true
        }
    }
    
    func makeEngWindow(){
        
        engW.backgroundColor = UIColor.whiteColor()
        engW.frame = CGRectMake(0, 0, 200, 400)
        engW.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        engW.alpha = 0.95
        engW.layer.cornerRadius = 20
        
        engW.makeKeyWindow()
        self.engW.makeKeyAndVisible()
        
        engB1.frame = CGRectMake(0, 0, 100, 40)
        engB1.backgroundColor = UIColor.orangeColor()
        engB1.setTitle("1号館", forState: .Normal)
        engB1.setTitleColor(UIColor.grayColor(), forState: .Normal)
        engB1.layer.masksToBounds = true
        engB1.layer.cornerRadius = 20.0
        engB1.layer.position = CGPointMake(self.engW.frame.width/2, 50)
        engB1.addTarget(self, action: "selectEng:", forControlEvents: .TouchUpInside)
        engB1.tag = 1
        self.engW.addSubview(engB1)
        
        engB2.frame = CGRectMake(0, 0, 100, 40)
        engB2.backgroundColor = UIColor.orangeColor()
        engB2.setTitle("2号館", forState: .Normal)
        engB2.setTitleColor(UIColor.grayColor(), forState: .Normal)
        engB2.layer.masksToBounds = true
        engB2.layer.cornerRadius = 20.0
        engB2.layer.position = CGPointMake(self.engW.frame.width/2, 100)
        engB2.addTarget(self, action: "selectEng:", forControlEvents: .TouchUpInside)
        engB2.tag = 2
        self.engW.addSubview(engB2)
        
        engB3.frame = CGRectMake(0, 0, 100, 40)
        engB3.backgroundColor = UIColor.orangeColor()
        engB3.setTitle("3号館", forState: .Normal)
        engB3.setTitleColor(UIColor.grayColor(), forState: .Normal)
        engB3.layer.masksToBounds = true
        engB3.layer.cornerRadius = 20.0
        engB3.layer.position = CGPointMake(self.engW.frame.width/2, 150)
        engB3.addTarget(self, action: "selectEng:", forControlEvents: .TouchUpInside)
        engB3.tag = 3
        self.engW.addSubview(engB3)
        
        engB4.frame = CGRectMake(0, 0, 100, 40)
        engB4.backgroundColor = UIColor.orangeColor()
        engB4.setTitle("4号館", forState: .Normal)
        engB4.setTitleColor(UIColor.grayColor(), forState: .Normal)
        engB4.layer.masksToBounds = true
        engB4.layer.cornerRadius = 20.0
        engB4.layer.position = CGPointMake(self.engW.frame.width/2, 200)
        engB4.addTarget(self, action: "selectEng:", forControlEvents: .TouchUpInside)
        engB4.tag = 4
        self.engW.addSubview(engB4)
        
        EducC.frame = CGRectMake(0, 0, 100, 40)
        EducC.backgroundColor = UIColor.orangeColor()
        EducC.setTitle("戻る", forState: .Normal)
        EducC.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducC.layer.masksToBounds = true
        EducC.layer.cornerRadius = 20.0
        EducC.layer.position = CGPointMake(self.engW.frame.width/2, self.engW.frame.height-50)
        EducC.addTarget(self, action: "selectEng:", forControlEvents: .TouchUpInside)
        EducC.tag = 10
        self.engW.addSubview(EducC)
        
    }
    
    func selectEng(sender: UIButton){
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
        }
        if sender.tag == 4 {
        var nextViewController: UIViewController = Educ4_1()
        self.presentViewController(nextViewController, animated: false, completion: nil)
        EducW.hidden = true
        }*/
        if sender.tag == 10{
            engW.hidden = true
        }
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        print("pinch")
        return myScrollView
    }

}