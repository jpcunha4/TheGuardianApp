//
//  MainScreenViewController.swift
//  TheGuardianApp
//
//  Created by Work on 21/08/19.
//  Copyright © 2019 Work. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    let api = API()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.fetchEarliestNews { (news, error) in
            
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
