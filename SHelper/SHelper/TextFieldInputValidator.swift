//
//  DataUtil.swift
//  PSB Credit
//
//  Created by ISCODE on 12/6/16.
//  Copyright © 2016 IS Code. All rights reserved.
//

import UIKit

class TextFieldInputValidator {
    class func isDecimal(string:String)->Bool{
        var format = "0123456789";
        if (string.containsString(".") == false){
            format = format+".";
        }
        let invalidCharacters = NSCharacterSet(charactersInString: format ).invertedSet
        let trueFormat = string.rangeOfCharacterFromSet(invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
        return trueFormat;
    }
    class func isNumber(string:String)->Bool{
        let format = "0123456789";
        let invalidCharacters = NSCharacterSet(charactersInString: format ).invertedSet
        let trueFormat = string.rangeOfCharacterFromSet(invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
        return trueFormat;
    }
}
