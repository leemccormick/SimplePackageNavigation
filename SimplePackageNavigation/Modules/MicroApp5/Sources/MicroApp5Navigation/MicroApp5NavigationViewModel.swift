import MicroApp5

public class MicroApp5NavigationViewModel {
    public static let shared: MicroApp5NavigationViewModel = .init()
    // MARK: - View Builders
    
    public init() {}
    
    public func createView1() -> View1 {
        return View1()
    }
    
    public func createView2() -> View2 {
        return View2()
    }
    
    public func createView3() -> View3 {
        return View3()
    }
}
