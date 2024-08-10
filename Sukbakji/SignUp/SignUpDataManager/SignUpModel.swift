//
//  SignUpModel.swift
//  Sukbakji
//
//  Created by 오현민 on 8/10/24.
//

import Foundation

// MARK: - SignUpModel
struct SignUpModel: Decodable {
    let isSuccess: Bool?
    let code, message: String?
    let result: SignUpResult?
}

// MARK: - SignUpResult
struct SignUpResult: Decodable {
    let email: String?
}