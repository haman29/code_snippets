import Foundation
let url = URL(string: "https://qiita.com/api/v2/items?query=swift")!
let request = URLRequest(url: url)
URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
                               print("hoge")
                               guard let data = data else { return }
                               do {
                                   let object = try JSONSerialization.jsonObject(with: data, options: [])
                                   print(object)
                               } catch let e {
                                   print(e)
                               }
                           }).resume()
