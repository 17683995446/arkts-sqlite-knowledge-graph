@Component
struct TestComponent247 {
  @State message: string = "Hello from component 247"

  aboutToAppear() {
    console.log("Component 247 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
