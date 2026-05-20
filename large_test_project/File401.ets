@Component
struct TestComponent401 {
  @State message: string = "Hello from component 401"

  aboutToAppear() {
    console.log("Component 401 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
