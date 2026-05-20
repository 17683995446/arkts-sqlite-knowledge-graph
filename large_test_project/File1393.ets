@Component
struct TestComponent1393 {
  @State message: string = "Hello from component 1393"

  aboutToAppear() {
    console.log("Component 1393 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
