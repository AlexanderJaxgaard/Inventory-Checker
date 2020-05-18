//
//  main.swift
//  productchecker
//
//  Created by Alexander Jaxgård on 5/18/20.
//  Copyright © 2020 Jaxgaard DnE. All rights reserved.
//

import Foundation

print("ProductChecker v1.0")
print("Created by Alexander Jaxgård.")
print("Copyright © 2020 Jaxgaard DnE. All rights reserved.")
print("Loading interface")
var searchFinished = false
var activeProduct: Int = 0
var productZero = false
var productOne = false
var productTwo = false
var productThree = false
var productFour = false

var company = ""
var active = false
let interface = true
print("")
print("Loading other..")

//var password = ""
let otherSet = true
var logIn = false

print("Loading settings..")
// var userName: String = ""
// var passWord: String = ""
var authUsrSucc = false
var authPassSucc = false
var searchIndexing = true
active = true
print("Successfully loaded:")
if interface && otherSet {
    print("Interface")
    print("Settings")
    print("Other")
} else if !interface {
    print("Failed to load interface.")
    print("Trying again..")
    print("Successfully loaded interface.")
} else if !otherSet {
    print("Failed to load other settings.")
} else {
    print("Something went wrong. Did you manipulate the code?")
}
print("Enter your username below.")
let userName = readLine()
if userName == "Itemsowner" {
    authUsrSucc = true
    print("Enter password")
} else {
    print("The username you entered does not exist.")
    searchIndexing = false
}
if authUsrSucc {

    let password = readLine()
    if password == "ItemsCheckerPass" {
        authPassSucc = true
    } else {
        print("The password you entered is wrong.")
        searchIndexing = false
}
}
if authUsrSucc && authPassSucc {
logIn = true
    print("")
    print("Items successfully loaded.")
    print("")
}
if logIn {
    searchFinished = false
print("You currently have \(products.count) items in your inventory")
    print("Enter index number of the selected item below.")
    let selectedProduct = readLine()
    if selectedProduct == "1" {
    productZero = true
    } else if selectedProduct == "2" {
        productOne = true
    } else if selectedProduct == "3" {
        productTwo = true
    } else if selectedProduct == "4" {
        productThree = true
    } else if selectedProduct == "5" {
        productFour = true
    } else {
        print("Product \(selectedProduct) could not be found. Did you enter the correct number?")
    searchIndexing = false
    }
}
if searchIndexing {
if productZero {
    activeProduct = 0
} else if productOne {
    activeProduct = 1
} else if productTwo {
    activeProduct = 2
} else if productThree {
    activeProduct = 3
} else if productFour {
    activeProduct = 4
}
searchFinished = true
var selectedProduct = products[(activeProduct)]
        print("I found: \(products[(activeProduct)])")
        print("With the barcode: \(barCode[(activeProduct)])")
        print("On aisle \(aisle[(activeProduct)])")
        if inventory[(activeProduct)] {
            print("This item is in inventory as of \(lastInventoryDate).")
        } else {
            print("This item is not in inventory as of \(lastInventoryDate).")
        }

}


if !searchIndexing {
    
}

