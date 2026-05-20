@Component
struct TestComponent1620 {
  @State message: string = "Hello from component 1620"

  aboutToAppear() {
    console.log("Component 1620 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
