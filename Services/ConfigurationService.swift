import Foundation
import Yams

class ConfigurationService {
    
    func getFileBundle(fileName: String, fileFormat: String) -> String? {
        return Bundle.main.path(forResource: fileName, ofType: fileFormat)
    }
    
    func loadYaml<T: Decodable>(objType: T.Type, fileName: String, fileFormat: String) -> T? {
        guard let findFile = getFileBundle(fileName: fileName, fileFormat: fileFormat) else {
            print("Cannot find your file.")
            return nil
        }
        
        do {
            let yamlStr = try String(contentsOfFile: findFile)
            
            let decoder = YAMLDecoder()
            let tConf = try decoder.decode(T.self, from: yamlStr)
            
            return tConf
        } catch {
            print("Błąd dekodowania YAML: \(error)")
            return nil
        }
    }
}
