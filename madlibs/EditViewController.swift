//
//  EditViewController.swift
//  madlibs
//
//  Created by Omar Ihmoda on 1/17/18.
//  Copyright © 2018 Omar Ihmoda. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    weak var delegate: editItemDelegate?
    var word_list: [String] = []

    @IBOutlet weak var labelOne: UITextField!
    
    @IBOutlet weak var labelTwo: UITextField!
    
    @IBOutlet weak var labelThree: UITextField!
    
    @IBOutlet weak var labelFour: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelOne.text = self.word_list[0]
        self.labelTwo.text = self.word_list[1]
        self.labelThree.text = self.word_list[2]
        self.labelFour.text = self.word_list[3]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        self.word_list[0] = self.labelOne.text!
        self.word_list[1] = self.labelTwo.text!
        self.word_list[2] = self.labelThree.text!
        self.word_list[3] = self.labelFour.text!

        delegate?.editMadLibs(controller: self, word_list: self.word_list)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
