@Component
struct TestComponent1533 {
  @State message: string = "Hello from component 1533"

  aboutToAppear() {
    console.log("Component 1533 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
