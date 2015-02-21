//
//  ViewController.swift
//  Modeling_L
//
//  Created by lo_1mc on 2014/12/04.
//  Copyright (c) 2014年 ie_Team_L. All rights reserved.
//

import UIKit

class sh1: UIViewController, UIToolbarDelegate, UIScrollViewDelegate{
    
    var myToolbar: UIToolbar!
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myScrollView: UIScrollView!
    
    let shW = UIWindow()
    let shB1 = UIButton()
    let shB2 = UIButton()
    let shB3 = UIButton()
    let EducC = UIButton()
    
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
        
        let myImage = UIImage(named: "sh1.png")
        
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
        
        // ViewにScrollViewをAddする.
        self.view.addSubview(myScrollView)
        
        
        
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
        let myNameButton: UIBarButtonItem = UIBarButtonItem(title: "大学会館 1階", style:.Bordered, target: self, action: nil)
        
        // 学部内ボタンを生成する.
        let myDepButton: UIBarButtonItem = UIBarButtonItem(title: "　　棟変更", style:.Plain, target: self, action: "onClickNaviButton:")
        myDepButton.tag = 2
        
        // スペーサを生成する.
        let space: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        
        // ボタンをツールバーに入れる.
        myNaviToolbar.items = [myMapButton, space, myNameButton, space, myDepButton]
        
        // ツールバーに追加する.
        self.view.addSubview(myNaviToolbar)
        
        
        
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
        
        
        // ボタンをツールバーに入れる.
        myToolbar.items = [space, myUIBarButton1kai, space, myUIBarButton2kai, space, myUIBarButton3kai, space]
        
        // ツールバーに追加する.
        self.view.addSubview(myToolbar)
        
        
        
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
        if sender.tag == 2 {
            println("floor2")
            var nextViewController: UIViewController = sh2()
            self.presentViewController(nextViewController, animated: false, completion: nil)
        } else if sender.tag == 3 {
            println("floor3")
            var nextViewController: UIViewController = sh3()
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
            makeSHWindow()
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

        if sender.tag == 2 {
            var nextViewController: UIViewController = cc1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            shW.hidden = true
        }
        if sender.tag == 10{
            shW.hidden = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}




