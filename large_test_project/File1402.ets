@Component
struct TestComponent1402 {
  @State message: string = "Hello from component 1402"

  aboutToAppear() {
    console.log("Component 1402 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
