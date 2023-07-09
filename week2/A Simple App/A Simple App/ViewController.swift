//
//  ViewController.swift
//  A Simple App
//
//  Created by 李童 on 2023/7/8.
//

import UIKit

class ViewController: UIViewController {
    
    var randomColor = colors.randomElement()
    
    @IBAction func showAnotherFunFact(_ sender: Any) {
        randomColor = colors.randomElement()
        randomStroy.text = text.randomElement()
        self.view.backgroundColor = UIColor(red: CGFloat(randomColor!.0 / 255),
                                            green: CGFloat(randomColor!.1 / 255),
                                            blue: CGFloat(randomColor!.2 / 255),
                                            alpha: 1)
    }
    
    @IBOutlet weak var randomStroy: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomStroy.text = text.randomElement()
        self.view.backgroundColor = UIColor(red: CGFloat(randomColor!.0 / 255),
                                            green: CGFloat(randomColor!.1 / 255),
                                            blue: CGFloat(randomColor!.2 / 255),
                                            alpha: 1)
    }
}

let text=[
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
    "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word",
    "This book is a treatise on the theory of ethics, very popular during the.",
    "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
]

let colors: [(CGFloat, CGFloat, CGFloat)] =  [
    (186, 59, 59),
    (199, 102, 6),
    (196, 163, 31),
    (102, 196, 31),
    (31, 135, 196),
    (31, 31, 196),
    (119, 31, 196)
]


