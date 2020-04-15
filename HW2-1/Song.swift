import Foundation
struct Song: Identifiable{
    var id = UUID()
    var picname: [String]
    var activity: String
    var date: String
    var content: String
}
