//
//  Timer.swift
//  ExEscapingError
//
//  Created by 김종권 on 2023/07/22.
//

import Foundation

struct MyStruct {
    var value = 0

    mutating func updateValue(completion: @escaping () -> Void) {
        DispatchQueue.main.async { [self] in
            print(self.value)
            completion()
        }
    }
}
