//
//  SignUpDataManager.swift
//  Sukbakji
//
//  Created by 오현민 on 8/10/24.
//

import Alamofire

class SignUpDataManager {
    let url = "http://54.180.165.121:8080/api/auth/signup"
    
    func signUpDataManager(_ parameters: SignUpAPIInput,
                           completion: @escaping (SignUpModel) -> Void) {
        
        AF.request(url,
                   method: .post,
                   parameters: parameters,
                   encoder: JSONParameterEncoder.default,
                   headers: ["Accept": "*/*", "Content-Type": "application/json"])
        .validate(statusCode: 200..<500)
        .responseDecodable(of: SignUpModel.self) { response in
            switch response.result {
            case .success(let signUpModel):
                completion(signUpModel)
                
            case .failure(let error):
                print("요청 실패: \(error.localizedDescription)")
            }
        }
    }
}