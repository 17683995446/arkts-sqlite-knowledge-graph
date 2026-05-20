@Component
struct TestComponent269 {
  @State message: string = "Hello from component 269"

  aboutToAppear() {
    console.log("Component 269 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
