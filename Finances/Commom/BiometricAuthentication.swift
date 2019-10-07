//
//  BiometricAuthentication.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 07/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import Foundation
import LocalAuthentication

class BiometricAuthentication {
    static var context: LAContext = LAContext()
    
    static var canEvaluatePolicy: Bool {
        return context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
    }
    
    static func evaluatePolicy(onSuccess: @escaping () -> Void, onError: @escaping (String) -> Void) {
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Login com biometria", reply: { success, evaluateError in
            if success {
                onSuccess()
            } else {
                onError(evaluateError?.localizedDescription ?? "Ocorreu um erro ao tentar autenticar com biometria")
            }
        })
    }
}
