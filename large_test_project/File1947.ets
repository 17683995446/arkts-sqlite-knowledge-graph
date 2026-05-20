@Component
struct TestComponent1947 {
  @State message: string = "Hello from component 1947"

  aboutToAppear() {
    console.log("Component 1947 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
