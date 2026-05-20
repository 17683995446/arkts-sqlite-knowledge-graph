@Component
struct TestComponent1003 {
  @State message: string = "Hello from component 1003"

  aboutToAppear() {
    console.log("Component 1003 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
