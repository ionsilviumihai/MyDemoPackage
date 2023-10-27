public struct MyDemoPackage {
    private(set) var text: String?

    public init(
        text: String
    ) {
        self.text = text
    }
    
    public func saySomething() -> String {
        return "MyDemoPackage: \(text ?? "")"
    }
}
