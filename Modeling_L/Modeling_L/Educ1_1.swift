//
//  ViewController.swift
//  Modeling_L
//
//  Created by lo_1mc on 2014/12/04.
//  Copyright (c) 2014年 ie_Team_L. All rights reserved.
//

import UIKit

class Educ1_1: UIViewController, UIToolbarDelegate, UIScrollViewDelegate{
    
    var myToolbar: UIToolbar!
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myScrollView: UIScrollView!
    
    let EducW = UIWindow()
    let EducB1 = UIButton()
    let EducB2 = UIButton()
    let EducB3 = UIButton()
    let EducB4 = UIButton()
    let EducC = UIButton()
    
    var info = ""
    let infoW = UIWindow()
    let infoIv = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        scrollView
        */
        var myScrollView = UIScrollView();
        myScrollView.delegate = self
        myScrollView.minimumZoomScale = 0.1
        myScrollView.maximumZoomScale = 1.2
        
        myScrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        
        // UIImageに画像を設定する.
        
        let myImage = UIImage(named: "Educ1_1.png")
        
        // UIImageViewを生成する.
        var myImageView = UIImageView()
        
        // myImageViewのimageにmyImageを設定する.
        myImageView.image = myImage
        
        // frameの値を設定する.
        myImageView.frame = CGRectMake(0, 0, myImage!.size.width, myImage!.size.height)
        
        // ScrollViewにmyImageViewを追加する.
        myScrollView.addSubview(myImageView)
        
        // ScrollViewにcontentSizeを設定する.
        myScrollView.contentSize = CGSizeMake(myImageView.frame.size.width, myImageView.frame.size.height)
        

        
        
        
        /*
        上側Bar
        */
        // ツールバーのサイズを決める.
        var myNaviToolbar = UIToolbar()
        myNaviToolbar = UIToolbar(frame: CGRectMake(0, self.view.bounds.size.height - 44, self.view.bounds.size.width, 40.0))
        
        // ツールバーの位置を決める.
        myNaviToolbar.layer.position = CGPoint(x: self.view.bounds.width/2, y: 20.0)
        
        // ツールバーの色を決める.
        myNaviToolbar.barStyle = .BlackTranslucent
        myNaviToolbar.tintColor = UIColor.whiteColor()
        myNaviToolbar.backgroundColor = UIColor.blackColor()
        
        // 全体マップボタンを生成する.
        let myMapButton: UIBarButtonItem = UIBarButtonItem(title: "全体マップ", style:.Plain, target: self, action: "onClickNaviButton:")
        myMapButton.tag = 1
       
        
        // マップ名称ボタンを生成する.
        let myNameButton: UIBarButtonItem = UIBarButtonItem(title: "共通教育棟1号館 1階", style:.Bordered, target: self, action: nil)

        // 学部内ボタンを生成する.
        let myDepButton: UIBarButtonItem = UIBarButtonItem(title: "　　棟変更", style:.Plain, target: self, action: "onClickNaviButton:")
        myDepButton.tag = 2
        
        // スペーサを生成する.
        let space: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        
        // ボタンをツールバーに入れる.
        myNaviToolbar.items = [myMapButton, space, myNameButton, space, myDepButton]
        
        
        
        /*
        下側Bar
        */
        // ツールバーのサイズを決める.
        myToolbar = UIToolbar(frame: CGRectMake(0, self.view.bounds.size.height - 44, self.view.bounds.size.width, 40.0))
        
        // ツールバーの位置を決める.
        myToolbar.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height-20.0)
        
        // ツールバーの色を決める.
        myToolbar.barStyle = .BlackTranslucent
        myToolbar.tintColor = UIColor.whiteColor()
        myToolbar.backgroundColor = UIColor.blackColor()
        
        // ボタン１階を生成する.
        let myUIBarButton1kai: UIBarButtonItem = UIBarButtonItem(title: "1階", style:.Bordered, target: self, action: "onClickBarButton:")
        myUIBarButton1kai.tag = 1
        
        // ボタン２階を生成する.
        let myUIBarButton2kai: UIBarButtonItem = UIBarButtonItem(title: "2階", style:.Bordered, target: self, action: "onClickBarButton:")
        myUIBarButton2kai.tag = 2
        
        // ボタン3階を生成する.
        let myUIBarButton3kai: UIBarButtonItem = UIBarButtonItem(title: "3階", style:.Bordered, target: self, action: "onClickBarButton:")
        myUIBarButton3kai.tag = 3
        
        // ボタン4階を生成する.
        let myUIBarButton4kai: UIBarButtonItem = UIBarButtonItem(title: "4階", style:.Bordered, target: self, action: "onClickBarButton:")
        myUIBarButton4kai.tag = 4
        
        // ボタン5階を生成する.
        let myUIBarButton5kai: UIBarButtonItem = UIBarButtonItem(title: "5階", style:.Bordered, target: self, action: "onClickBarButton:")
        myUIBarButton5kai.tag = 5
        
        
        // ボタンをツールバーに入れる.
        myToolbar.items = [space, myUIBarButton1kai, space, myUIBarButton2kai, space, myUIBarButton3kai, space, myUIBarButton4kai, space, myUIBarButton5kai, space]
        
        
        /*
        トイレ情報生成
        */
        let TButton1m = UIButton()
        TButton1m.frame = CGRectMake(0, 0, 40, 40)
        //TButton1m.backgroundColor = UIColor.redColor()
        TButton1m.layer.position = CGPointMake(264, 135)
        TButton1m.addTarget(self, action: "selectInfo:", forControlEvents: .TouchUpInside)
        TButton1m.tag = 3
        myScrollView.addSubview(TButton1m)
        
        let TButton1w = UIButton()
        TButton1w.frame = CGRectMake(0, 0, 40, 40)
        //TButton1w.backgroundColor = UIColor.redColor()
        TButton1w.layer.position = CGPointMake(264, 184)
        TButton1w.addTarget(self, action: "selectInfo:", forControlEvents: .TouchUpInside)
        TButton1w.tag = 4
        myScrollView.addSubview(TButton1w)
        
        let TButton2m = UIButton()
        TButton2m.frame = CGRectMake(0, 0, 80, 40)
        //TButton2m.backgroundColor = UIColor.redColor()
        TButton2m.layer.position = CGPointMake(905, 430)
        TButton2m.addTarget(self, action: "selectInfo:", forControlEvents: .TouchUpInside)
        TButton2m.tag = 1
        myScrollView.addSubview(TButton2m)
        
        let TButton2w = UIButton()
        TButton2w.frame = CGRectMake(0, 0, 80, 40)
        //TButton2w.backgroundColor = UIColor.redColor()
        TButton2w.layer.position = CGPointMake(905, 375)
        TButton2w.addTarget(self, action: "selectInfo:", forControlEvents: .TouchUpInside)
        TButton2w.tag = 2
        myScrollView.addSubview(TButton2w)

        
        // ViewにScrollViewをAddする.
        self.view.addSubview(myScrollView)
        // ツールバーを画面に追加する.
        self.view.addSubview(myNaviToolbar)
        // ツールバーを画面に追加する.
        self.view.addSubview(myToolbar)
    }
    
    // トイレが押されたときの処理(トイレを選択する)
    func selectInfo(sender: UIButton){
        if sender.tag == 1 {
            info = "1_1m1"
        }
        if sender.tag == 2 {
            info = "1_1w1"
        }
        if sender.tag == 3 {
            info = "1_1m2"
        }
        if sender.tag == 4 {
            info = "1_1w2"
        }
        makeInfo()
        
        if sender.tag == 10 {
            infoW.hidden = true
        }
    }
    
    // トイレ情報を表示する
    func makeInfo(){
        infoW.backgroundColor = UIColor.whiteColor()
        infoW.frame = CGRectMake(0, 0, 200, 400)
        infoW.layer.position = CGPointMake(self.view.frame.width/2, self.view.frame.height/2)
        infoW.alpha = 0.95
        infoW.layer.cornerRadius = 20
        
        infoW.makeKeyWindow()
        self.infoW.makeKeyAndVisible()
        
        var infoI = UIImage(named: info)
        infoIv.image = infoI
        infoIv.frame = CGRectMake(0, 0, infoI!.size.width, infoI!.size.height)
        
        infoIv.layer.position = CGPointMake(self.infoW.frame.width/2, 150)
        self.infoW.addSubview(infoIv)
        
        EducC.frame = CGRectMake(0, 0, 100, 40)
        EducC.backgroundColor = UIColor.orangeColor()
        EducC.setTitle("戻る", forState: .Normal)
        EducC.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        EducC.layer.masksToBounds = true
        EducC.layer.cornerRadius = 20.0
        EducC.layer.position = CGPointMake(self.infoW.frame.width/2, self.infoW.frame.height-50)
        EducC.addTarget(self, action: "selectInfo:", forControlEvents: .TouchUpInside)
        EducC.tag = 10
        self.infoW.addSubview(EducC)
        
    }
    
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        print("pinch")
        return myImageView
    }
    
    /*
    UIBarButtonItemが押された際に呼ばれる.
    */
    func onClickBarButton(sender: UIBarButtonItem) {
        println("Button is pushed")
        if sender.tag == 1 {
            println("floor1")
        } else if sender.tag == 2 {
            println("floor2")
            // 遷移するViewを設定
            var nextViewController: UIViewController = Educ1_2()
            // Viewの移動
            self.presentViewController(nextViewController, animated: false, completion: nil)
        } else if sender.tag == 3 {
            println("floor3")
            var nextViewController: UIViewController = Educ1_3()
            self.presentViewController(nextViewController, animated: false, completion: nil)
        } else if sender.tag == 4 {
            println("floor4")
            var nextViewController: UIViewController = Educ1_4()
            self.presentViewController(nextViewController, animated: false, completion: nil)
        } else if sender.tag == 5 {
            println("floor5")
            var nextViewController: UIViewController = Educ1_5()
            self.presentViewController(nextViewController, animated: false, completion: nil)
        }

        
    }
    
    /* 
    上側Buttonが押された時に呼び出される
    */
    func onClickNaviButton(sender: UIButton){
        println("NaviButton is pushed")
        if sender.tag == 1 {
            println("CampusMap")
            var nextViewController: UIViewController = CampusMap()
            self.presentViewController(nextViewController, animated: false, completion: nil)
        } else if sender.tag == 2 {
            println("Building change")
            makeEducWindow()
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}




