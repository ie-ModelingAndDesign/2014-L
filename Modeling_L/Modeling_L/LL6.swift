//
//  ViewController.swift
//  Modeling_L
//
//  Created by lo_1mc on 2014/12/04.
//  Copyright (c) 2014年 ie_Team_L. All rights reserved.
//

import UIKit

class LL6: UIViewController, UIToolbarDelegate, UIScrollViewDelegate{
    
    var myToolbar: UIToolbar!
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myScrollView: UIScrollView!
    
    let LLW = UIWindow()
    let LLB1 = UIButton()
    let LLB2 = UIButton()
    let LLB3 = UIButton()
    
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
        
        let myImage = UIImage(named: "law6.png")
        
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
        let myNameButton: UIBarButtonItem = UIBarButtonItem(title: "法文棟 6階", style:.Bordered, target: self, action: nil)
        
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
        
        // ボタン6階を生成する.
        let myUIBarButton6kai: UIBarButtonItem = UIBarButtonItem(title: "6階", style:.Bordered, target: self, action: "onClickBarButton:")
        myUIBarButton6kai.tag = 6
        
        
        // ボタンをツールバーに入れる.
        myToolbar.items = [space, myUIBarButton1kai, space, myUIBarButton2kai, space, myUIBarButton3kai, space, myUIBarButton4kai, space, myUIBarButton5kai, space, myUIBarButton6kai, space]
        
        
        // ViewにScrollViewをAddする.
        self.view.addSubview(myScrollView)
        // ツールバーを画面に追加する.
        self.view.addSubview(myNaviToolbar)
        // ツールバーを画面に追加する.
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
        if sender.tag == 1 {
            println("floor1")
            var nextViewController: UIViewController = LL1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
        } else if sender.tag == 3 {
            println("floor3")
            var nextViewController: UIViewController = LL3()
            self.presentViewController(nextViewController, animated: false, completion: nil)
        } else if sender.tag == 4 {
            println("floor4")
            var nextViewController: UIViewController = LL4()
            self.presentViewController(nextViewController, animated: false, completion: nil)
        } else if sender.tag == 5 {
            println("floor5")
            var nextViewController: UIViewController = LL5()
            self.presentViewController(nextViewController, animated: false, completion: nil)
        } else if sender.tag == 2 {
            println("floor6")
            var nextViewController: UIViewController = LL2()
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
            makeLLWindow()
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
        
        if sender.tag == 2 {
            var nextViewController: UIViewController = LN1()
            self.presentViewController(nextViewController, animated: false, completion: nil)
            LLW.hidden = true
        }
        /*
        if sender.tag == 3 {
        var nextViewController: UIViewController = Educ3_1()
        self.presentViewController(nextViewController, animated: false, completion: nil)
        EducW.hidden = true
        }*/
        if sender.tag == 10{
            LLW.hidden = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}




