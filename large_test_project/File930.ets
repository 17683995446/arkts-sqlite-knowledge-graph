@Component
struct TestComponent930 {
  @State message: string = "Hello from component 930"

  aboutToAppear() {
    console.log("Component 930 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
