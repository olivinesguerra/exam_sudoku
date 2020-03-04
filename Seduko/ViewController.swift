//
//  ViewController.swift
//  Seduko
//
//  Created by Olivin Esguerra on 3/4/20.
//  Copyright © 2020 Olivin Esguerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data = [
        [
            [
                [0,0,0],
                [0,4,0],
                [8,2,0]
            ],
            [
                [9,0,4],
                [0,5,0],
                [6,1,3]
        ],
            [
                [6,0,0],
                [8,3,1],
                [0,4,0]
            ],
        ],
        [
            [
                [0,9,0],
                [2,1,8],
                [7,0,3]
            ],
            [
                [8,3,2],
                [7,4,5],
                [0,0,6]
            ],
            [
                [1,0,7],
                [0,0,0],
                [0,0,0]
            ],
       ],
        [
           [
               [0,0,2],
               [1,8,5],
               [3,7,4]
           ],
           [
               [0,0,0],
               [4,2,9],
               [0,0,0]
           ],
           [
               [4,1,0],
               [0,6,0],
               [0,2,0]
           ],
        ]
    ];

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.register(UINib(nibName: "RowTableViewCell", bundle: nil), forCellReuseIdentifier: "RowTableViewCellID")
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func generateSodoku(){
        
        for _ in 0..<9 {
            for _ in 0..<9 {
                 
            }
        }
    }


}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "RowTableViewCellID") as! RowTableViewCell
        cell.loadData(data: data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
