//
//  KeyboardViewController.swift
//  Dvorak_storyboard
//
//  Created by vit on 4/29/18.
//  Copyright © 2018 Jimmi. All rights reserved.
//

import UIKit



// new class for display "Round Button" menu in Attributes inspector, in Xcode
class RoundButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
} //END RoundButton class


class KeyboardViewController: UIInputViewController {

    private var proxy: UITextDocumentProxy {
        return textDocumentProxy
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Perform custom UI setup here
    }





    @IBAction func enter(_ sender: RoundButton) {
        proxy.insertText("\n")
    }

    @IBAction func space(_ sender: RoundButton) {
        proxy.insertText(" ")
    }

    @IBAction func backSpace(_ sender: RoundButton) {
        proxy.deleteBackward()
    }

    @IBAction func nextKeyboard(_ sender: UIButton) {
        advanceToNextInputMode()
    }

    @IBAction func lettersButtons(_ sender: UIButton) {
        let string = sender.titleLabel!.text
        proxy.insertText("\(string!)")
    }


    @IBAction func dotButton(_ sender: UIButton) {
        proxy.insertText(".")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
//    override func textDidChange(_ textInput: UITextInput?) {
//        // The app has just changed the document's contents, the document context has been updated.
//        var textColor: UIColor
//        let proxy = self.textDocumentProxy
//        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
//            textColor = UIColor.white
//        } else {
//            textColor = UIColor.black
//        }
//        //self.nextKeyboardButton.setTitleColor(textColor, for: [])
//    }

} // END KeyboardViewController class
















