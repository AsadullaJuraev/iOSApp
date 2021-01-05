//
//  ScrollViewController.swift
//  iOSApp
//
//  Created by Asadulla Juraev on 05.01.2021.
//

import UIKit

class ScrollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initviews()
        
    }

    func initviews(){
        addNavigation()
        
    }
    
    // MARK: - Navigation
    
    func addNavigation(){
        title = "Scroll View"
        let backButton = UIImage(named: "ic_back")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: backButton, style: .plain, target: self, action: #selector(leftTapped))
    }
    @objc func leftTapped(){
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: - FUNCTIONS
  

}
