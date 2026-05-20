@Component
struct TestComponent1417 {
  @State message: string = "Hello from component 1417"

  aboutToAppear() {
    console.log("Component 1417 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
