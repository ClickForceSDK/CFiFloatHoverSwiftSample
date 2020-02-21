//
//  ViewController.swift
//  CFiFloatHoverSwiftSample
//
//  Created by CF-NB on 2019/11/21.
//  Copyright © 2019 CF-NB. All rights reserved.
//

import UIKit
import iMFAD

class ViewController: UIViewController {
    var mfloathover : MFFloatHover?
    var scroll:UIScrollView!
    var fullsize:CGSize!

    override func viewDidLoad() {
        super.viewDidLoad()
        scroll = UIScrollView()
        fullsize = UIScreen.main.bounds.size
        scroll.frame = CGRect(x: 0, y: 20, width: fullsize.width, height: fullsize.height - 20);
        scroll.contentSize = CGSize(width: fullsize.width, height: fullsize.height*3);
        scroll.isScrollEnabled = true;
        self.view.addSubview(scroll);
        
        mfloathover = MFFloatHover.init();
        mfloathover?.bannerId = "10175"
        mfloathover?.delegate = self;
        mfloathover?.debugInfo(true);
        mfloathover?.setScrollview(scroll)
        mfloathover?.requestAd();
        self.view.addSubview(mfloathover!);
        // Do any additional setup after loading the view.
    }
}

extension ViewController:MFFloatHoverDelegate{
    func onSuccessToMFFloatHover() {
        mfloathover?.show();
        print("onSuccessToMFFloatHover");
    }
    
    func onFailToMFFloatHover() {
        print("onFailToMFFloatHover");
    }
    
    func onClickToMFFloatHover() {
        print("onClickToMFFloatHover");
    }
    
    func onCloseToMFFloatHover() {
        print("onCloseToMFFloatHover");
    }
}

