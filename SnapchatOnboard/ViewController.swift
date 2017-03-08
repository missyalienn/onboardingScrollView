//
//  ViewController.swift
//  SnapchatOnboard
//
//  Created by Missy Allan on 3/8/17.
//  Copyright © 2017 PandaLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //View1
        let view1 = vcOne(nibName: "vcOne", bundle: nil)
        self.addChildViewController(view1)
        self.scrollView.addSubview(view1.view)
        view1.didMove(toParentViewController: self)
        
        //View2
        let view2 = vcTwo(nibName: "vcTwo", bundle: nil)
        self.addChildViewController(view2)
        self.scrollView.addSubview(view2.view)
        view2.didMove(toParentViewController: self)
        
        var view2Frame: CGRect = view2.view.frame
        view2Frame.origin.x = self.view.frame.width
        view2.view.frame =  view2Frame

        //View3
        let view3 = vcThree(nibName: "vcThree", bundle: nil)
        self.addChildViewController(view3)
        self.scrollView.addSubview(view3.view)
        view3.didMove(toParentViewController: self)
        
        var view3Frame: CGRect = view3.view.frame
        view3Frame.origin.x = 2 * self.view.frame.width
        view3.view.frame =  view3Frame

        //View4 
        let view4 = vcFour(nibName: "vcFour", bundle: nil)
        self.addChildViewController(view4)
        self.scrollView.addSubview(view4.view)
        view4.didMove(toParentViewController: self)
        
        var view4frame: CGRect = view4.view.frame
        view4frame.origin.x = 3 * self.view.frame.width
        view4.view.frame = view4frame
        
        
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.width * 4, height: self.view.frame.size.height)
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

