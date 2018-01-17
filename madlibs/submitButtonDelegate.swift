//
//  submitButtonDelegate.swift
//  madlibs
//
//  Created by Omar Ihmoda on 1/17/18.
//  Copyright © 2018 Omar Ihmoda. All rights reserved.
//

import UIKit

protocol editItemDelegate: class {
    func editMadLibs(controller: UIViewController, word_list: [String])
}
