@Component
struct TestComponent1525 {
  @State message: string = "Hello from component 1525"

  aboutToAppear() {
    console.log("Component 1525 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
