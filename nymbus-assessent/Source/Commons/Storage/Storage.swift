//
//  Storage.swift
//  nymbus-assessment
//
//  Created by Erick Pac on 16/06/21.
//

import Foundation

class Storage {
    
    lazy var userDefaults = UserDefaults.standard
    
    func put(value: Any, forKey key: String) {
        userDefaults.set(value, forKey: key)
    }
    
    func get(key: String) -> Any? {
        return userDefaults.object(forKey: key)
    }
    
    func remove(key: String) {
        userDefaults.removeObject(forKey: key)
    }
    
    func clear() -> Bool {
        userDefaults.dictionaryRepresentation().forEach {
            remove(key: $0.0)
        }
        
        return true
    }
    
}

extension Storage {
    
    func encode<E: Encodable>(model: E, key: String) {
        let encoder = JSONEncoder()
        guard let value = try? encoder.encode(model) else { return }
        put(value: value, forKey: key)
    }
    
    func decode<D: Decodable>(model: D.Type, key: String) -> D? {
        let value = get(key: key)
        if let dataValue = value as? Data {
            return decodeModel(model, data: dataValue)
        }
        
        if let dictValue = value as? [String: Any] {
            guard let dataValue = try? JSONSerialization.data(withJSONObject: dictValue, options: .init(rawValue: 0)) else { return nil }
            return decodeModel(model, data: dataValue)
        }
        
        return nil
    }
    
    internal func decodeModel<D: Decodable>(_ model: D.Type, data: Data) -> D? {
        return try? JSONDecoder().decode(model, from: data)
    }
    
}
