//
//  ImageData.swift
//  AC-iOS-HalloweenTableViewCells
//
//  Created by C4Q  on 10/30/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

class ImageData {
    static let images: [HalloweenImage] = [
         HalloweenImage(imageName: "pumpkinHead",
                        tags: ["Costume", "Pumpkin", "Scarecrow"]),
         HalloweenImage(imageName: "pumpkin",
                        tags: ["Pumpkin", "Spooky"]),
         HalloweenImage(imageName: "pumpkinWeb",
                        tags: ["Pumpkin", "Spider"]),
         HalloweenImage(imageName: "spiderHouse",
                        tags: ["Spider", "Haunted House"]),
         HalloweenImage(imageName: "hauntedHouse",
                        tags: ["Pumpkin", "Haunted House"]),
         HalloweenImage(imageName: "witchCat",
                        tags: ["Witch", "Cat", "Broom"]),
        HalloweenImage(imageName: "witchForest",
                       tags: ["Witch", "Moon", "Forest"]),
        HalloweenImage(imageName: "catInPumpkin",
                       tags: ["Cat", "Pumpkin", "Witch", "Spider"])
    ]
}
