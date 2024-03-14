import MicroApp3

public class MicroApp3NavigationViewModel {
    public static let shared: MicroApp3NavigationViewModel = .init()
    
    public init() {}
    
    // MARK: - View Builders
    public func createView1() -> View1 {
        return View1()
    }
    
    public func createView2() -> View2 {
        return View2()
    }
}
