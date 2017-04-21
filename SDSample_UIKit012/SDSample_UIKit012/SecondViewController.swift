//
//  SecondViewController.swift
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Viewの設定
        self.setupView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private Methods
    
    /// Viewの設定
    private func setupView() {
        self.title = "My Second View"
        self.view.backgroundColor = UIColor.green
    }
}
