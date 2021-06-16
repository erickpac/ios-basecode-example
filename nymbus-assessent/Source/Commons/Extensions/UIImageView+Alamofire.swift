//
//  UIImageView+Alamofire.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import AlamofireImage

extension UIImageView {
    
    func loadImage(path: String?, placeholder: UIImage? = nil, completion: ((UIImage?) -> Void)? = nil) {
        
        guard let strongPath = path, !strongPath.isEmpty else {
            image = placeholder != nil ? placeholder : UIImage(named: "logo-placeholder")
            image?.accessibilityIdentifier = "logo-placeholder"
            if let completion = completion {
                completion(image)
            }
            return
        }
        
        guard
            let urlEncoded = strongPath.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
            let url = URL(string: urlEncoded) else { return }
        
        let imagePlaceholder = placeholder != nil ? placeholder : UIImage(named: "logo-placeholder")
        imagePlaceholder?.accessibilityIdentifier = "logo-placeholder"
        af.setImage(withURL: url,
                    placeholderImage: imagePlaceholder,
                    imageTransition: .crossDissolve(0.2),
                    runImageTransitionIfCached: false,
                    completion: { response in
                        if let completion = completion {
                            completion(response.value)
                        }
                    })
    }
    
}
