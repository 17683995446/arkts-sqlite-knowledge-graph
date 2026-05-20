@Component
struct TestComponent1427 {
  @State message: string = "Hello from component 1427"

  aboutToAppear() {
    console.log("Component 1427 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
