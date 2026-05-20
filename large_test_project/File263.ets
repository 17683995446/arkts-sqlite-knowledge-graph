@Component
struct TestComponent263 {
  @State message: string = "Hello from component 263"

  aboutToAppear() {
    console.log("Component 263 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
