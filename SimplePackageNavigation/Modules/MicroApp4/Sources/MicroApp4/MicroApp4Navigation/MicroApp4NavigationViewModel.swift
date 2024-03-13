public class MicroApp4NavigationViewModel {
    public static let shared: MicroApp4NavigationViewModel = .init()
    // MARK: - View Builders
    
    public init() {}
    
    public func createView1() -> View1 {
        return View1()
    }
    
    public func createView2() -> View2 {
        return View2()
    }
}
