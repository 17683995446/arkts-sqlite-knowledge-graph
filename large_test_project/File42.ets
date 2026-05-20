@Component
struct TestComponent42 {
  @State message: string = "Hello from component 42"

  aboutToAppear() {
    console.log("Component 42 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
