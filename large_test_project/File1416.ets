@Component
struct TestComponent1416 {
  @State message: string = "Hello from component 1416"

  aboutToAppear() {
    console.log("Component 1416 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
