//
//  ViewController.swift
//  Modeling_L
//
//  Created by lo_1mc on 2014/12/04.
//  Copyright (c) 2014年 ie_Team_L. All rights reserved.
//

import UIKit

class Educ1: UIViewController, UIToolbarDelegate, UIScrollViewDelegate{
    
    var myToolbar: UIToolbar!
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        Navigation Bar
        */
        // タイトルの変更、表示
        self.title = "共通教育棟 1階"
        self.navigationController?.navigationBar
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
        let myLeftButton: UIBarButtonItem = UIBarButtonItem(title: "Back", style: .Plain, target: self, action: "onClickMyButton")
        myLeftButton.tag = 0
        self.navigationItem.leftBarButtonItem = myLeftButton
        
        
        /*
        scrollView
        */
        var myScrollView = UIScrollView();
        
        myScrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        
        // UIImageに画像を設定する.
        let myImage = UIImage(named: "test.png")
        
        // UIImageViewを生成する.
        var myImageView = UIImageView()
        
        // myImageViewのimageにmyImageを設定する.
        myImageView.image = myImage
        
        // frameの値を設定する.
        myImageView.frame = CGRectMake(0, 0, myImage.size.width, myImage.size.height)
        
        // ScrollViewにmyImageViewを追加する.
        myScrollView.addSubview(myImageView)
        
        // ScrollViewにcontentSizeを設定する.
        myScrollView.contentSize = CGSizeMake(myImageView.frame.size.width, myImageView.frame.size.height)
        
        
        // ViewにScrollViewをAddする.
        self.view.addSubview(myScrollView)
        
        
        
        /*
        toolBar
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
        
        // スペーサを生成する.
        let space: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        
        // ボタンをツールバーに入れる.
        myToolbar.items = [space, myUIBarButton1kai, space, myUIBarButton2kai, space, myUIBarButton3kai, space, myUIBarButton4kai, space, myUIBarButton5kai, space]
        
        // ツールバーに追加する.
        self.view.addSubview(myToolbar)
        
        

    }
    
    /*
    UIBarButtonItemが押された際に呼ばれる.
    */
    func onClickBarButton(sender: UIBarButtonItem) {
        if sender.tag == 1 {
            self.view.backgroundColor = UIColor.greenColor()
        } else if sender.tag == 2 {
            // 遷移するViewを設定
            let nextViewController: UIViewController = Educ2()
            // Viewの移動
            self.navigationController?.pushViewController(Educ2(), animated: false)
        } else if sender.tag == 3 {
            self.view.backgroundColor = UIColor.redColor()
        } else if sender.tag == 4 {
            self.view.backgroundColor = UIColor.blackColor()
        } else if sender.tag == 5 {
            self.view.backgroundColor = UIColor.orangeColor()
        } else if sender.tag == 0 {
            
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}




