import Glibc
import Foundation

public class HttpConnect: NSObject {
    
    public typealias dataFromURLCompletionClosure = (URLResponse?, Data?) -> Void
    
    public func sendGetRequest (
        _ handler: @escaping dataFromURLCompletionClosure) {

        let sessionConfiguration =
            URLSessionConfiguration.default;
        
        let urlString =
            "https://itunes.apple.com/search?term=jimmy+buffett"
    
        if let encodeString =
            urlString.addingPercentEncoding(
                withAllowedCharacters: CharacterSet.urlQueryAllowed),
            let url = URL(string: encodeString) {
        
            var request = URLRequest(url:url)
            request.httpMethod = "GET"
            let urlSession = URLSession(
                configuration:sessionConfiguration, delegate: nil, delegateQueue: nil)

            let sessionTask = urlSession.dataTask(with: request) {
                (data, response, error) in
                
                handler(response, data)
            }
            
            sessionTask.resume()
        }
    }
    
    public func sendPostRequest(_ handler: @escaping dataFromURLCompletionClosure) {
        
        let sessionConfiguration =
        URLSessionConfiguration.default
        
        let urlString = "http://httpbin.org/post"

        if let encodeString =
            urlString.addingPercentEncoding(
                withAllowedCharacters: CharacterSet.urlQueryAllowed),
            let url = URL(string: encodeString) {
            
            var request = URLRequest(url:url)
            request.httpMethod = "POST"
            let params = dictionaryToQueryString(["One":"1 and 1", "Two":"2 and 2"])
            request.httpBody = params.data(
                using: String.Encoding.utf8, allowLossyConversion: true)
                
            let urlSession = URLSession(
                configuration:sessionConfiguration, delegate: nil, delegateQueue: nil)
            
            let sessionTask = urlSession.dataTask(with: request) {
                (data, response, error) in
                
                handler(response, data)
            }
            sessionTask.resume()
        }
    }
    
    private func dictionaryToQueryString(_ dict: [String : String]) -> String {
        var parts = [String]()
        for (key, value) in dict {
            let part : String = key + "=" + value
            parts.append(part);
        }
        return parts.joined(separator: "&")
        
    }
    
}

let printResultsClosure: HttpConnect.dataFromURLCompletionClosure = {

   if let data = $1 {
      if let sString = String(data: data, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue)) {
         print(sString)
      } else {
	 print("Data conversion error")
      }
   } else {
      print("Data is nil")
   }
}

let aConnect = HttpConnect()
aConnect.sendGetRequest(printResultsClosure)

print("press enter to exit")
let _ = readLine(strippingNewline: true)
