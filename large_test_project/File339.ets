@Component
struct TestComponent339 {
  @State message: string = "Hello from component 339"

  aboutToAppear() {
    console.log("Component 339 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
