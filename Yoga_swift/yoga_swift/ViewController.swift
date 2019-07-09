//
//  ViewController.swift
//  yoga_swift
//
//  Created by rrd on 2019/6/19.
//  Copyright © 2019 zbs. All rights reserved.
//

import UIKit
import YogaKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.test3()
    }
    
    private func test1(){
        let contentView = UIView()
        contentView.backgroundColor = .lightGray
        contentView.configureLayout { (layout) in
            layout.isEnabled = true     ///开启yoga样式
            layout.flexDirection = .row ///flex的方向 默认是纵向的
            layout.width = YGValue(self.view.bounds.size.width - 40)
            layout.height = 80
            layout.marginTop = 64
            layout.marginLeft = 20
        }
        self.view.addSubview(contentView)
        
        let child1 = UIView()
        child1.backgroundColor = .red
        child1.configureLayout { (layout) in
            layout.isEnabled = true
            layout.height = 20
//            layout.width = 80
            layout.alignSelf = .center ///竖直方向居中
            layout.marginLeft = 20
            layout.marginRight = 20
            layout.flexGrow = 1 ///允许自由填充
//            layout.display = .none   ///是否计算它 默认为Flex设置为none自动忽略该视图的计算
        }
        contentView.addSubview(child1)
        contentView.yoga.applyLayout(preservingOrigin: true)
    }
    
    private func test2(){
        self.view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.justifyContent = .spaceBetween ///等间距 自动设宽
            layout.alignItems = .center
        }
        for i in 0...10 {
            let view = UIView()
            view.backgroundColor = .lightGray
            view.configureLayout { (layout) in
                layout.isEnabled = true
                layout.height = YGValue(Float(10 * i))
                layout.width = YGValue(Float(10 * i))
            }
            self.view.addSubview(view)
        }
        self.view.yoga.applyLayout(preservingOrigin: true)
    }
    
    
    private func test3(){
        self.view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .row
            layout.alignItems = .center   ///竖直方向居中
            layout.paddingHorizontal = 5
        }
        
        let layoutBlock: YGLayoutConfigurationBlock = { (layout: YGLayout) in
            layout.isEnabled = true
            layout.height = 100
            layout.marginHorizontal = 5
            layout.flexGrow = 1 ///允许自由填充
        }
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        
        redView.configureLayout(block: layoutBlock)
        yellowView.configureLayout(block: layoutBlock)
        self.view.addSubview(redView)
        self.view.addSubview(yellowView)
        self.view.yoga.applyLayout(preservingOrigin: true)
    }
}

