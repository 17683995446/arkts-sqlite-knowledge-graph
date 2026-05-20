@Component
struct TestComponent1496 {
  @State message: string = "Hello from component 1496"

  aboutToAppear() {
    console.log("Component 1496 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
