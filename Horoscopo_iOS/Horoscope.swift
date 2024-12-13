//
//  Horoscope.swift
//  Horoscopo_iOS
//
//  Created by Tardes on 12/12/24.
//

import Foundation
import UIKit

struct Horoscope {
    
    let id: String
    let name: String
    let icon: UIImage
    let dates: String
    
    static func getAll() -> [Horoscope]{
        
        [
            Horoscope(id: "aries", name: "Aries", icon: UIImage(named: "Icons/aries")!, dates: "March 21 to April 19"),
            Horoscope(id: "taurus", name: "Taurus", icon: UIImage(named: "Icons/taurus")!, dates: "April 20 to May 20"),
            Horoscope(id: "gemini", name: "Gemini", icon: UIImage(named: "Icons/gemini")!, dates: "May 21 to June 20"),
            Horoscope(id: "leo", name: "Leo", icon: UIImage(named: "Icons/leo")!, dates: "June 21 to July 22"),
            Horoscope(id: "aquarius", name: "Aquarius", icon: UIImage(named: "Icons/aquarius")!, dates: "January 20 to February 18"),
            Horoscope(id: "cancer", name: "Cancer", icon: UIImage(named: "Icons/cancer")!, dates: "August 23 to September 22"),
            Horoscope(id: "libra", name: "Libra", icon: UIImage(named: "Icons/libra")!, dates: "September 23 to October 22"),
            Horoscope(id: "capricorn", name: "Capricorn", icon: UIImage(named: "Icons/capricorn")!, dates: "December 22 to January 19"),
            Horoscope(id: "pisces", name: "Pisces", icon: UIImage(named: "Icons/pisces")!, dates: "February 19 to March 20"),
            Horoscope(id: "sagittarius", name: "Sagittarius", icon: UIImage(named: "Icons/sagittarius")!, dates: "November 22 to December 21"),
            Horoscope(id: "virgo", name: "Virgo", icon: UIImage(named: "Icons/virgo")!, dates: "August 23 to September 22"),
            Horoscope(id: "scorpio", name: "Scorpio", icon: UIImage(named: "Icons/scorpio")!, dates: "October 23 to November 21")
        ]
        
    }
    
    
}
