@Component
struct TestComponent252 {
  @State message: string = "Hello from component 252"

  aboutToAppear() {
    console.log("Component 252 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
