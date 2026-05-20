@Component
struct TestComponent1811 {
  @State message: string = "Hello from component 1811"

  aboutToAppear() {
    console.log("Component 1811 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
