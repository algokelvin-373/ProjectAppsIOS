//
//  UrlImage.swift
//  m24_image_url
//
//  Created by Kelvin HT on 7/30/20.
//  Copyright © 2020 Kelvin HT. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    
    var downloadImage: UIImage?
    var didChange = PassthroughSubject<ImageLoader?, Never>()
    
    func load(url: String) {
        
        guard let imageURL = URL(string: url) else {
            fatalError("ImageURL is not correct!")
        }
        
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    self.didChange.send(nil)
                }
                return
            }
            
            self.downloadImage = UIImage(data: data)
            DispatchQueue.main.async {
                self.didChange.send(self)
            }
            
        }.resume()
        
    }
    
}
