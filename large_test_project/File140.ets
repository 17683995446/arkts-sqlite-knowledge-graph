@Component
struct TestComponent140 {
  @State message: string = "Hello from component 140"

  aboutToAppear() {
    console.log("Component 140 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
