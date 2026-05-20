@Component
struct TestComponent1751 {
  @State message: string = "Hello from component 1751"

  aboutToAppear() {
    console.log("Component 1751 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
