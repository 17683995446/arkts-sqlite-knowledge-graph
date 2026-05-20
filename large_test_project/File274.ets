@Component
struct TestComponent274 {
  @State message: string = "Hello from component 274"

  aboutToAppear() {
    console.log("Component 274 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
