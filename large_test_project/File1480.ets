@Component
struct TestComponent1480 {
  @State message: string = "Hello from component 1480"

  aboutToAppear() {
    console.log("Component 1480 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
