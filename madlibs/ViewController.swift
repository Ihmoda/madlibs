//
//  ViewController.swift
//  madlibs
//
//  Created by Omar Ihmoda on 1/17/18.
//  Copyright © 2018 Omar Ihmoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, editItemDelegate {


    var word_list: [String] = [
        "crazy",
        "run",
        "swim",
        "basement"
    ]

    @IBOutlet weak var madLibsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        madLibsLabel.text = "We are having a perfectly \(self.word_list[0]) time now. Later we will \(self.word_list[1]) and \(self.word_list[2]) in the \(self.word_list[3])."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! EditViewController
        destination.word_list = self.word_list
        destination.delegate = self
    }
    
    func editMadLibs(controller: UIViewController, word_list: [String]) {
        dismiss(animated: true, completion: nil)
        self.word_list = word_list
        madLibsLabel.text = "We are having a perfectly \(self.word_list[0]) time now. Later we will \(self.word_list[1]) and \(self.word_list[2]) in the \(self.word_list[3])."
    }


}

