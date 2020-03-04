//
//  SedokuItemCollectionViewCell.swift
//  Seduko
//
//  Created by Olivin Esguerra on 3/4/20.
//  Copyright © 2020 Olivin Esguerra. All rights reserved.
//

import UIKit

class SedokuItemCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var firstTxtFld: UITextField!
    @IBOutlet weak var secondTxtFld: UITextField!
    @IBOutlet weak var thirdTxtFld: UITextField!
    
    @IBOutlet weak var fourthTxtFld: UITextField!
    @IBOutlet weak var fifthTxtFld: UITextField!
    @IBOutlet weak var sixthTxtFld: UITextField!
    
    @IBOutlet weak var seventhTxtFld: UITextField!
    @IBOutlet weak var eigthTxtFld: UITextField!
    @IBOutlet weak var nineTxtFld: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadData(data: [[Int]]){
        
        print(data)
        
        if(data[0][0] != 0){
            self.firstTxtFld.text = "\(data[0][0])"
            self.firstTxtFld.isEnabled = false
        } else {
            self.firstTxtFld.isEnabled = true
            self.firstTxtFld.text = ""
        }
        
        if(data[0][1] != 0){
            self.secondTxtFld.text = "\(data[0][1])"
            self.secondTxtFld.isEnabled = false
        } else {
            self.secondTxtFld.isEnabled = true
            self.secondTxtFld.text = ""
        }
        
        if(data[0][2] != 0){
            self.thirdTxtFld.text = "\(data[0][2])"
            self.thirdTxtFld.isEnabled = false
        } else {
            self.thirdTxtFld.isEnabled = true
            self.thirdTxtFld.text = ""
        }
        
        //
        
        if(data[1][0] != 0){
            self.fourthTxtFld.text = "\(data[1][0])"
            self.fourthTxtFld.isEnabled = false
        } else {
            self.fourthTxtFld.isEnabled = true
            self.fourthTxtFld.text = ""
        }
        
        if(data[1][1] != 0){
            self.fifthTxtFld.text = "\(data[1][1])"
            self.fifthTxtFld.isEnabled = false
        } else {
            self.fifthTxtFld.isEnabled = true
            self.fifthTxtFld.text = ""
        }
        
        if(data[1][2] != 0){
            self.sixthTxtFld.text = "\(data[1][2])"
            self.sixthTxtFld.isEnabled = false
        } else {
            self.sixthTxtFld.isEnabled = true
            self.sixthTxtFld.text = ""
        }
        
        //
        
        if(data[2][0] != 0){
            self.seventhTxtFld.text = "\(data[2][0])"
            self.seventhTxtFld.isEnabled = false
        } else {
            self.seventhTxtFld.isEnabled = true
            self.seventhTxtFld.text = ""
        }
        
        if(data[2][1] != 0){
            self.eigthTxtFld.text = "\(data[2][1])"
            self.eigthTxtFld.isEnabled = false
        } else {
            self.eigthTxtFld.isEnabled = true
            self.eigthTxtFld.text = ""
        }
        
        if(data[2][2] != 0){
            self.nineTxtFld.text = "\(data[2][2])"
            self.nineTxtFld.isEnabled = false
        } else {
            self.nineTxtFld.isEnabled = true
            self.nineTxtFld.text = ""
        }
        
    }

}
