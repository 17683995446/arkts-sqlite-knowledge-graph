@Component
struct TestComponent309 {
  @State message: string = "Hello from component 309"

  aboutToAppear() {
    console.log("Component 309 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
