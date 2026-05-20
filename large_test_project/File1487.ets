@Component
struct TestComponent1487 {
  @State message: string = "Hello from component 1487"

  aboutToAppear() {
    console.log("Component 1487 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
