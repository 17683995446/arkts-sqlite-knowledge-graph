@Component
struct TestComponent27 {
  @State message: string = "Hello from component 27"

  aboutToAppear() {
    console.log("Component 27 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
