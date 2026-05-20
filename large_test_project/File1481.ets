@Component
struct TestComponent1481 {
  @State message: string = "Hello from component 1481"

  aboutToAppear() {
    console.log("Component 1481 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
