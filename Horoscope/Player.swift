//
//  Player.swift
//  Horoscope
//
//  Created by Aiden on 23/06/2019.
//  Copyright © 2019 aiden. All rights reserved.
//

import Foundation


struct Player {
    var birthDay: String!
    init(birthDay: String) {
        self.birthDay = birthDay
    }
    
    var month: String {
        var tempMonth: String = ""
        var count: Int = 0
        for i in birthDay {
            if count == 2 {
                break
            } else {
                if i == " " {
                    count += 1
                    continue
                } else if count >= 1 {
                    tempMonth.append(i)
                }
            }
            
            
        }
        return tempMonth
        
    }
    
    var day: Int? {
        var tempDay: String = ""
        for i in birthDay {
            if i != " " {
                tempDay.append(i)
            } else {
                break
            }
        }
        return Int(tempDay) ?? 26
    }
    
    var zodiacSign: ZodiacSigns {
        let month = self.month
        let day = self.day
        switch month {
        case "January":
            if day! <= 19 {
                return .capricon
            } else {
                return .aquarius
            }
        case "February":
            if day! <= 18 {
                return .aquarius
            } else {
                return .picses
            }
        case "March":
            if day! <= 20 {
                return .picses
            } else {
                return .aries
            }
        case "April":
            if day! <= 19 {
                return .aries
            } else {
                return .taurus
            }
        case "May":
            if day! <= 20 {
                return .taurus
            } else {
                return .gemini
            }
        case "June":
            if day! <= 20 {
                return .gemini
            } else {
                return .cancer
            }
        case "July":
            if day! <= 22 {
                return .cancer
            } else {
                return .leo
            }
        case "August":
            if day! <= 22 {
                return .leo
            } else {
                return .virgo
            }
        case "September":
            if day! <= 22 {
                return .virgo
            } else {
                return .libra
            }
        case "October":
            if day! <= 22 {
                return .libra
            } else {
                return .scorpio
            }
        case "November":
            if day! <= 21 {
                return .scorpio
            } else {
                return .sagittarius
            }
        case "December":
            if day! <= 21 {
                return .sagittarius
            } else {
                return .capricon
            }
        default:
            return .virgo
        }
    }
}
