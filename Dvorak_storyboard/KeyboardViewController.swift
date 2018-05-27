//
//  KeyboardViewController.swift
//  Dvorak_storyboard
//
//  Created by vitket on 29/4/18.
//  Copyright © 2018. All rights reserved.
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
    var flagShiftForLetters = true
    var flagShiftForNumbers = false
    var flagNumbers = false
    var flagCapsLock = false

    //MARK: IBOutlets
    @IBOutlet weak var shiftOutlet: RoundButton!
    @IBOutlet weak var spaceOutlet: RoundButton!
    @IBOutlet weak var backSpaceOutlet: RoundButton!
    @IBOutlet weak var Ferz: RoundButton!
    @IBOutlet weak var numbers: RoundButton!
    @IBOutlet weak var question: RoundButton!
    @IBOutlet weak var exclamation: RoundButton!
    @IBOutlet weak var P: RoundButton!
    @IBOutlet weak var Y: RoundButton!
    @IBOutlet weak var F: RoundButton!
    @IBOutlet weak var G: RoundButton!
    @IBOutlet weak var C: RoundButton!
    @IBOutlet weak var R: RoundButton!
    @IBOutlet weak var L: RoundButton!
    @IBOutlet weak var A: RoundButton!
    @IBOutlet weak var O: RoundButton!
    @IBOutlet weak var E: RoundButton!
    @IBOutlet weak var U: RoundButton!
    @IBOutlet weak var I: RoundButton!
    @IBOutlet weak var D: RoundButton!
    @IBOutlet weak var H: RoundButton!
    @IBOutlet weak var T: RoundButton!
    @IBOutlet weak var N: RoundButton!
    @IBOutlet weak var S: RoundButton!
    @IBOutlet weak var dash: RoundButton!
    @IBOutlet weak var Q: RoundButton!
    @IBOutlet weak var J: RoundButton!
    @IBOutlet weak var K: RoundButton!
    @IBOutlet weak var X: RoundButton!
    @IBOutlet weak var B: RoundButton!
    @IBOutlet weak var M: RoundButton!
    @IBOutlet weak var W: RoundButton!
    @IBOutlet weak var V: RoundButton!
    @IBOutlet weak var Z: RoundButton!


    //Create variable "proxy" to simplifiyng name protocol "textDocumentProxy"
    private var proxy: UITextDocumentProxy {
        return textDocumentProxy
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()
        // Add custom view sizing constraints here
    }


    // Delete all symbols in text to holding backSpace  button.
    @objc func deleteMore(_ sender: UIGestureRecognizer) {
        proxy.deleteBackward()
        if(proxy.documentContextBeforeInput == nil){
            question.setTitle(",", for: .normal)
            exclamation.setTitle(".", for: .normal)
            P.setTitle("P", for: .normal)
            Y.setTitle("Y", for: .normal)
            F.setTitle("F", for: .normal)
            G.setTitle("G", for: .normal)
            C.setTitle("C", for: .normal)
            R.setTitle("R", for: .normal)
            L.setTitle("L", for: .normal)
            A.setTitle("A", for: .normal)
            O.setTitle("O", for: .normal)
            E.setTitle("E", for: .normal)
            U.setTitle("U", for: .normal)
            I.setTitle("I", for: .normal)
            D.setTitle("D", for: .normal)
            H.setTitle("H", for: .normal)
            T.setTitle("T", for: .normal)
            N.setTitle("N", for: .normal)
            S.setTitle("S", for: .normal)
            dash.setTitle("-", for: .normal)
            Q.setTitle("Q", for: .normal)
            J.setTitle("J", for: .normal)
            K.setTitle("K", for: .normal)
            X.setTitle("X", for: .normal)
            B.setTitle("B", for: .normal)
            M.setTitle("M", for: .normal)
            W.setTitle("W", for: .normal)
            V.setTitle("V", for: .normal)
            Z.setTitle("Z", for: .normal)
            shiftOutlet.setTitle("♝", for: .normal)

            flagShiftForLetters = true
            flagShiftForNumbers = false
            flagNumbers = false
            flagCapsLock = false
        }
    }


    // Insert dot by double pressing "Space".
    @objc func insertDot(_ sender: UIGestureRecognizer) {
        let lastChar = proxy.documentContextBeforeInput?.last
        if  lastChar != Optional(" ") &&
            lastChar != Optional("!") &&
            lastChar != Optional(",") &&
            lastChar != Optional("?") &&
            lastChar != Optional(".") &&
            lastChar != Optional(":") &&
            lastChar != Optional("-") &&
            lastChar != Optional("<") &&
            lastChar != Optional(">") &&
            lastChar != Optional("(") &&
            lastChar != Optional(")") &&
            lastChar != Optional("{") &&
            lastChar != Optional("}") &&
            lastChar != Optional("[") &&
            lastChar != Optional("]") &&
            lastChar != Optional("#") &&
            lastChar != Optional("@") &&
            lastChar != nil {

                proxy.insertText(". ")
                question.setTitle(",", for: .normal)
                exclamation.setTitle(".", for: .normal)
                P.setTitle("P", for: .normal)
                Y.setTitle("Y", for: .normal)
                F.setTitle("F", for: .normal)
                G.setTitle("G", for: .normal)
                C.setTitle("C", for: .normal)
                R.setTitle("R", for: .normal)
                L.setTitle("L", for: .normal)
                A.setTitle("A", for: .normal)
                O.setTitle("O", for: .normal)
                E.setTitle("E", for: .normal)
                U.setTitle("U", for: .normal)
                I.setTitle("I", for: .normal)
                D.setTitle("D", for: .normal)
                H.setTitle("H", for: .normal)
                T.setTitle("T", for: .normal)
                N.setTitle("N", for: .normal)
                S.setTitle("S", for: .normal)
                dash.setTitle("-", for: .normal)
                Q.setTitle("Q", for: .normal)
                J.setTitle("J", for: .normal)
                K.setTitle("K", for: .normal)
                X.setTitle("X", for: .normal)
                B.setTitle("B", for: .normal)
                M.setTitle("M", for: .normal)
                W.setTitle("W", for: .normal)
                V.setTitle("V", for: .normal)
                Z.setTitle("Z", for: .normal)
                shiftOutlet.setTitle("♝", for: .normal)

                flagShiftForLetters = true
                flagShiftForNumbers = false
                flagNumbers = false
                flagCapsLock = false
        } else {
            proxy.insertText(" ")
        }
    }


    // Turn on "CapsLock" by double pressing "Shift".
    @objc func capsLockOnOf (_ sender: UIGestureRecognizer) {

        question.setTitle(",", for: .normal)
        exclamation.setTitle(".", for: .normal)
        P.setTitle("P", for: .normal)
        Y.setTitle("Y", for: .normal)
        F.setTitle("F", for: .normal)
        G.setTitle("G", for: .normal)
        C.setTitle("C", for: .normal)
        R.setTitle("R", for: .normal)
        L.setTitle("L", for: .normal)
        A.setTitle("A", for: .normal)
        O.setTitle("O", for: .normal)
        E.setTitle("E", for: .normal)
        U.setTitle("U", for: .normal)
        I.setTitle("I", for: .normal)
        D.setTitle("D", for: .normal)
        H.setTitle("H", for: .normal)
        T.setTitle("T", for: .normal)
        N.setTitle("N", for: .normal)
        S.setTitle("S", for: .normal)
        dash.setTitle("-", for: .normal)
        Q.setTitle("Q", for: .normal)
        J.setTitle("J", for: .normal)
        K.setTitle("K", for: .normal)
        X.setTitle("X", for: .normal)
        B.setTitle("B", for: .normal)
        M.setTitle("M", for: .normal)
        W.setTitle("W", for: .normal)
        V.setTitle("V", for: .normal)
        Z.setTitle("Z", for: .normal)
        shiftOutlet.setTitle("C", for: .normal)
        flagCapsLock = true
        flagShiftForLetters = true

    }

    override func viewDidLoad(){
        super.viewDidLoad()

        // Delete all symbols in text to holding backSpace  button.
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(deleteMore))
        longPress.minimumPressDuration = 0.1
        longPress.numberOfTouchesRequired = 1
        longPress.allowableMovement = 0.5
        self.backSpaceOutlet.addGestureRecognizer(longPress)

        // Insert dot by double pressing "Space".
        let doublePress = UITapGestureRecognizer(target: self, action: #selector(insertDot))
        doublePress.numberOfTapsRequired = 2
        self.spaceOutlet.addGestureRecognizer(doublePress)

        // Turn on "CapsLock" by double pressing "Shift".
        let capsLock = UITapGestureRecognizer(target: self, action: #selector(capsLockOnOf))
        capsLock.numberOfTapsRequired = 2
        self.shiftOutlet.addGestureRecognizer(capsLock)

    }


    // The button to move between letters to numbers and vice versa.
    @IBAction func numbers(_ sender: RoundButton) {

        if flagNumbers == false {
            question.setTitle("[", for: .normal)
            exclamation.setTitle("(", for: .normal)
            P.setTitle("{", for: .normal)
            Y.setTitle("<", for: .normal)
            F.setTitle(">", for: .normal)
            G.setTitle("}", for: .normal)
            C.setTitle(")", for: .normal)
            R.setTitle("]", for: .normal)
            L.setTitle("\"", for: .normal)
            A.setTitle("1", for: .normal)
            O.setTitle("2", for: .normal)
            E.setTitle("3", for: .normal)
            U.setTitle("4", for: .normal)
            I.setTitle("5", for: .normal)
            D.setTitle("6", for: .normal)
            H.setTitle("7", for: .normal)
            T.setTitle("8", for: .normal)
            N.setTitle("9", for: .normal)
            S.setTitle("0", for: .normal)
            dash.setTitle("'", for: .normal)
            Q.setTitle(";", for: .normal)
            J.setTitle(":", for: .normal)
            K.setTitle("=", for: .normal)
            X.setTitle("?", for: .normal)
            B.setTitle("!", for: .normal)
            M.setTitle("\\", for: .normal)
            W.setTitle("/", for: .normal)
            V.setTitle("&", for: .normal)
            Z.setTitle("|", for: .normal)
            shiftOutlet.setTitle("♗", for: .normal)
            flagNumbers = true
            flagCapsLock = false

        }else if flagNumbers ==  true {
            if flagShiftForLetters == true {
                question.setTitle(",", for: .normal)
                exclamation.setTitle(".", for: .normal)
                P.setTitle("P", for: .normal)
                Y.setTitle("Y", for: .normal)
                F.setTitle("F", for: .normal)
                G.setTitle("G", for: .normal)
                C.setTitle("C", for: .normal)
                R.setTitle("R", for: .normal)
                L.setTitle("L", for: .normal)
                A.setTitle("A", for: .normal)
                O.setTitle("O", for: .normal)
                E.setTitle("E", for: .normal)
                U.setTitle("U", for: .normal)
                I.setTitle("I", for: .normal)
                D.setTitle("D", for: .normal)
                H.setTitle("H", for: .normal)
                T.setTitle("T", for: .normal)
                N.setTitle("N", for: .normal)
                S.setTitle("S", for: .normal)
                dash.setTitle("-", for: .normal)
                Q.setTitle("Q", for: .normal)
                J.setTitle("J", for: .normal)
                K.setTitle("K", for: .normal)
                X.setTitle("X", for: .normal)
                B.setTitle("B", for: .normal)
                M.setTitle("M", for: .normal)
                W.setTitle("W", for: .normal)
                V.setTitle("V", for: .normal)
                Z.setTitle("Z", for: .normal)
                shiftOutlet.setTitle("♝", for: .normal)

            } else if flagShiftForLetters == false {
                question.setTitle(",", for: .normal)
                exclamation.setTitle(".", for: .normal)
                P.setTitle("p", for: .normal)
                Y.setTitle("y", for: .normal)
                F.setTitle("f", for: .normal)
                G.setTitle("g", for: .normal)
                C.setTitle("c", for: .normal)
                R.setTitle("r", for: .normal)
                L.setTitle("l", for: .normal)
                A.setTitle("a", for: .normal)
                O.setTitle("o", for: .normal)
                E.setTitle("e", for: .normal)
                U.setTitle("u", for: .normal)
                I.setTitle("i", for: .normal)
                D.setTitle("d", for: .normal)
                H.setTitle("h", for: .normal)
                T.setTitle("t", for: .normal)
                N.setTitle("n", for: .normal)
                S.setTitle("s", for: .normal)
                dash.setTitle("_", for: .normal)
                Q.setTitle("q", for: .normal)
                J.setTitle("j", for: .normal)
                K.setTitle("k", for: .normal)
                X.setTitle("x", for: .normal)
                B.setTitle("b", for: .normal)
                M.setTitle("m", for: .normal)
                W.setTitle("w", for: .normal)
                V.setTitle("v", for: .normal)
                Z.setTitle("z", for: .normal)
                shiftOutlet.setTitle("♗", for: .normal)

            }
            flagNumbers = false
            flagShiftForNumbers = false
        }

    }


    // The button to move between character sets in "numbers" and registers sets in "letters".
    @IBAction func shift(_ sender: RoundButton) {
        if flagNumbers == false {
            if flagShiftForLetters == true {
                question.setTitle(",", for: .normal)
                exclamation.setTitle(".", for: .normal)
                P.setTitle("p", for: .normal)
                Y.setTitle("y", for: .normal)
                F.setTitle("f", for: .normal)
                G.setTitle("g", for: .normal)
                C.setTitle("c", for: .normal)
                R.setTitle("r", for: .normal)
                L.setTitle("l", for: .normal)
                A.setTitle("a", for: .normal)
                O.setTitle("o", for: .normal)
                E.setTitle("e", for: .normal)
                U.setTitle("u", for: .normal)
                I.setTitle("i", for: .normal)
                D.setTitle("d", for: .normal)
                H.setTitle("h", for: .normal)
                T.setTitle("t", for: .normal)
                N.setTitle("n", for: .normal)
                S.setTitle("s", for: .normal)
                dash.setTitle("_", for: .normal)
                Q.setTitle("q", for: .normal)
                J.setTitle("j", for: .normal)
                K.setTitle("k", for: .normal)
                X.setTitle("x", for: .normal)
                B.setTitle("b", for: .normal)
                M.setTitle("m", for: .normal)
                W.setTitle("w", for: .normal)
                V.setTitle("v", for: .normal)
                Z.setTitle("z", for: .normal)
                shiftOutlet.setTitle("♗", for: .normal)
                flagShiftForLetters = false
                flagCapsLock = false

            }else if flagShiftForLetters == false {
                question.setTitle(",", for: .normal)
                exclamation.setTitle(".", for: .normal)
                P.setTitle("P", for: .normal)
                Y.setTitle("Y", for: .normal)
                F.setTitle("F", for: .normal)
                G.setTitle("G", for: .normal)
                C.setTitle("C", for: .normal)
                R.setTitle("R", for: .normal)
                L.setTitle("L", for: .normal)
                A.setTitle("A", for: .normal)
                O.setTitle("O", for: .normal)
                E.setTitle("E", for: .normal)
                U.setTitle("U", for: .normal)
                I.setTitle("I", for: .normal)
                D.setTitle("D", for: .normal)
                H.setTitle("H", for: .normal)
                T.setTitle("T", for: .normal)
                N.setTitle("N", for: .normal)
                S.setTitle("S", for: .normal)
                dash.setTitle("-", for: .normal)
                Q.setTitle("Q", for: .normal)
                J.setTitle("J", for: .normal)
                K.setTitle("K", for: .normal)
                X.setTitle("X", for: .normal)
                B.setTitle("B", for: .normal)
                M.setTitle("M", for: .normal)
                W.setTitle("W", for: .normal)
                V.setTitle("V", for: .normal)
                Z.setTitle("Z", for: .normal)
                shiftOutlet.setTitle("♝", for: .normal)
                flagShiftForLetters = true

            }
        }else if flagNumbers == true {
            if flagShiftForNumbers == false {
                question.setTitle("↑", for: .normal)
                exclamation.setTitle("↓", for: .normal)
                P.setTitle("←", for: .normal)
                Y.setTitle("→", for: .normal)
                F.setTitle("", for: .normal)
                G.setTitle("❤︎", for: .normal)
                C.setTitle("☺︎", for: .normal)
                R.setTitle("☹︎", for: .normal)
                L.setTitle("↩︎", for: .normal)
                A.setTitle("@", for: .normal)
                O.setTitle("%", for: .normal)
                E.setTitle("^", for: .normal)
                U.setTitle("*", for: .normal)
                I.setTitle("+", for: .normal)
                D.setTitle("~", for: .normal)
                H.setTitle("$", for: .normal)
                T.setTitle("—", for: .normal)
                N.setTitle("±", for: .normal)
                S.setTitle("#", for: .normal)
                dash.setTitle("°", for: .normal)
                Q.setTitle(";", for: .normal)
                J.setTitle(":", for: .normal)
                K.setTitle("=", for: .normal)
                X.setTitle("?", for: .normal)
                B.setTitle("!", for: .normal)
                M.setTitle("\\", for: .normal)
                W.setTitle("/", for: .normal)
                V.setTitle("&", for: .normal)
                Z.setTitle("|", for: .normal)
                shiftOutlet.setTitle("♝", for: .normal)
                flagShiftForNumbers = true

            }else if flagShiftForNumbers == true {
                question.setTitle("[", for: .normal)
                exclamation.setTitle("(", for: .normal)
                P.setTitle("{", for: .normal)
                Y.setTitle("<", for: .normal)
                F.setTitle(">", for: .normal)
                G.setTitle("}", for: .normal)
                C.setTitle(")", for: .normal)
                R.setTitle("]", for: .normal)
                L.setTitle("\"", for: .normal)
                A.setTitle("1", for: .normal)
                O.setTitle("2", for: .normal)
                E.setTitle("3", for: .normal)
                U.setTitle("4", for: .normal)
                I.setTitle("5", for: .normal)
                D.setTitle("6", for: .normal)
                H.setTitle("7", for: .normal)
                T.setTitle("8", for: .normal)
                N.setTitle("9", for: .normal)
                S.setTitle("0", for: .normal)
                dash.setTitle("'", for: .normal)
                Q.setTitle(";", for: .normal)
                J.setTitle(":", for: .normal)
                K.setTitle("=", for: .normal)
                X.setTitle("?", for: .normal)
                B.setTitle("!", for: .normal)
                M.setTitle("\\", for: .normal)
                W.setTitle("/", for: .normal)
                V.setTitle("&", for: .normal)
                Z.setTitle("|", for: .normal)
                shiftOutlet.setTitle("♗", for: .normal)
                flagShiftForNumbers = false
            }
        }
    }


    //Sending a message.
    @IBAction func enter(_ sender: RoundButton) {
        proxy.insertText("\n")
    }
    // Inserting " ".
    @IBAction func space(_ sender: RoundButton) {
        proxy.insertText(" ")
    }

    //Deleting one by one symbols and switching to "upper case" in the case of an empty string.
    @IBAction func backSpace(_ sender: RoundButton) {
        proxy.deleteBackward()
        if (proxy.documentContextBeforeInput == nil){
            question.setTitle(",", for: .normal)
            exclamation.setTitle(".", for: .normal)
            P.setTitle("P", for: .normal)
            Y.setTitle("Y", for: .normal)
            F.setTitle("F", for: .normal)
            G.setTitle("G", for: .normal)
            C.setTitle("C", for: .normal)
            R.setTitle("R", for: .normal)
            L.setTitle("L", for: .normal)
            A.setTitle("A", for: .normal)
            O.setTitle("O", for: .normal)
            E.setTitle("E", for: .normal)
            U.setTitle("U", for: .normal)
            I.setTitle("I", for: .normal)
            D.setTitle("D", for: .normal)
            H.setTitle("H", for: .normal)
            T.setTitle("T", for: .normal)
            N.setTitle("N", for: .normal)
            S.setTitle("S", for: .normal)
            dash.setTitle("-", for: .normal)
            Q.setTitle("Q", for: .normal)
            J.setTitle("J", for: .normal)
            K.setTitle("K", for: .normal)
            X.setTitle("X", for: .normal)
            B.setTitle("B", for: .normal)
            M.setTitle("M", for: .normal)
            W.setTitle("W", for: .normal)
            V.setTitle("V", for: .normal)
            Z.setTitle("Z", for: .normal)
            shiftOutlet.setTitle("♝", for: .normal)

            flagShiftForLetters = true
            flagShiftForNumbers = false
            flagNumbers = false
        }
    }


    // Move to next keyboard.
    @IBAction func nextKeyboard(_ sender: UIButton) {
        advanceToNextInputMode()
    }


    //Inserting symbols in input line.
    @IBAction func lettersButtons(_ sender: UIButton) {

        proxy.insertText("\(sender.titleLabel!.text!)")
        if (flagShiftForLetters == true) && (flagNumbers == false) && (sender.tag != 1) && (flagCapsLock == false) { // For "." sender.tag == 1
            question.setTitle(",", for: .normal)
            exclamation.setTitle(".", for: .normal)
            P.setTitle("p", for: .normal)
            Y.setTitle("y", for: .normal)
            F.setTitle("f", for: .normal)
            G.setTitle("g", for: .normal)
            C.setTitle("c", for: .normal)
            R.setTitle("r", for: .normal)
            L.setTitle("l", for: .normal)
            A.setTitle("a", for: .normal)
            O.setTitle("o", for: .normal)
            E.setTitle("e", for: .normal)
            U.setTitle("u", for: .normal)
            I.setTitle("i", for: .normal)
            D.setTitle("d", for: .normal)
            H.setTitle("h", for: .normal)
            T.setTitle("t", for: .normal)
            N.setTitle("n", for: .normal)
            S.setTitle("s", for: .normal)
            dash.setTitle("_", for: .normal)
            Q.setTitle("q", for: .normal)
            J.setTitle("j", for: .normal)
            K.setTitle("k", for: .normal)
            X.setTitle("x", for: .normal)
            B.setTitle("b", for: .normal)
            M.setTitle("m", for: .normal)
            W.setTitle("w", for: .normal)
            V.setTitle("v", for: .normal)
            Z.setTitle("z", for: .normal)
            shiftOutlet.setTitle("♗", for: .normal)
            flagShiftForLetters = false

        }else if flagShiftForLetters == false && flagNumbers == false && sender.tag == 1 {
            question.setTitle(",", for: .normal)
            exclamation.setTitle(".", for: .normal)
            P.setTitle("P", for: .normal)
            Y.setTitle("Y", for: .normal)
            F.setTitle("F", for: .normal)
            G.setTitle("G", for: .normal)
            C.setTitle("C", for: .normal)
            R.setTitle("R", for: .normal)
            L.setTitle("L", for: .normal)
            A.setTitle("A", for: .normal)
            O.setTitle("O", for: .normal)
            E.setTitle("E", for: .normal)
            U.setTitle("U", for: .normal)
            I.setTitle("I", for: .normal)
            D.setTitle("D", for: .normal)
            H.setTitle("H", for: .normal)
            T.setTitle("T", for: .normal)
            N.setTitle("N", for: .normal)
            S.setTitle("S", for: .normal)
            dash.setTitle("-", for: .normal)
            Q.setTitle("Q", for: .normal)
            J.setTitle("J", for: .normal)
            K.setTitle("K", for: .normal)
            X.setTitle("X", for: .normal)
            B.setTitle("B", for: .normal)
            M.setTitle("M", for: .normal)
            W.setTitle("W", for: .normal)
            V.setTitle("V", for: .normal)
            Z.setTitle("Z", for: .normal)
            shiftOutlet.setTitle("♝", for: .normal)
            flagShiftForLetters = true
        }
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
















