//
//  ColourDetailVC.swift
//  RandomColors
//
//  Created by Mikolaj Lukasik on 23/04/2020.
//  Copyright © 2020 Mikolaj Lukasik. All rights reserved.
//

import UIKit

class ColourDetailVC: UIViewController {
    
    var colour: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colour ?? .systemBackground
        

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
