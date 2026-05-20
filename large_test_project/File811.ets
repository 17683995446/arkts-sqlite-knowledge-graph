@Component
struct TestComponent811 {
  @State message: string = "Hello from component 811"

  aboutToAppear() {
    console.log("Component 811 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
