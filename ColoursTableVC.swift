//
//  ColoursTableVC.swift
//  RandomColors
//
//  Created by Mikolaj Lukasik on 23/04/2020.
//  Copyright © 2020 Mikolaj Lukasik. All rights reserved.
//

import UIKit

class ColoursTableVC: UIViewController {

    @IBOutlet var table: UITableView!
    
    var randomColours: [UIColor] = []
    
    enum Cells {
        static let colourCell = "ColourCell"
    }
    
    enum Segues {
        static let toDetail = "ToColoursDetailsVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColours()

        // Do any additional setup after loading the view.
    }
    
    
    func createRandomColours() {
        for _ in 0..<500 {
            randomColours.append(.random())
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColourDetailVC
        destinationVC.colour = sender as? UIColor
    }

}


extension ColoursTableVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return randomColours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colourCell) else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = randomColours[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = randomColours[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}
