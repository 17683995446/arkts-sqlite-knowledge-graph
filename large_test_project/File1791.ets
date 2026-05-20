@Component
struct TestComponent1791 {
  @State message: string = "Hello from component 1791"

  aboutToAppear() {
    console.log("Component 1791 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
