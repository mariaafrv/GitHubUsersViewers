import Foundation


class GetApi {
    
    func getUser(username: String, completion: @escaping (User?) -> Void) {
        let semaphore = DispatchSemaphore (value: 0)
        
        var request = URLRequest(url: URL(string: "https://api.github.com/users/\(username)")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print(String(describing: error))
                completion(nil)
                semaphore.signal()
                return
            }
            
            let decoder = JSONDecoder()
            
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            do {
                let user = try decoder.decode(User.self, from: data)
                completion(user)
            } catch {
                completion(nil)
            }
            
            let resp = response as? HTTPURLResponse
            print(resp?.statusCode as Any)
            
            print(String(data: data, encoding: .utf8)!, "FUNCIONA")
            semaphore.signal()
        }
        task.resume()
        semaphore.wait()
    }
}


 
