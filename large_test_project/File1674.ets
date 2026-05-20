@Component
struct TestComponent1674 {
  @State message: string = "Hello from component 1674"

  aboutToAppear() {
    console.log("Component 1674 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
