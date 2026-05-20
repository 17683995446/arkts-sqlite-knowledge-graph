@Component
struct TestComponent237 {
  @State message: string = "Hello from component 237"

  aboutToAppear() {
    console.log("Component 237 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
