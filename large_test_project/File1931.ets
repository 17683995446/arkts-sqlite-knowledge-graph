@Component
struct TestComponent1931 {
  @State message: string = "Hello from component 1931"

  aboutToAppear() {
    console.log("Component 1931 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
