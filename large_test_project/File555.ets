@Component
struct TestComponent555 {
  @State message: string = "Hello from component 555"

  aboutToAppear() {
    console.log("Component 555 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
