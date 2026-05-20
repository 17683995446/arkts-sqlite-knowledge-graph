@Component
struct TestComponent1491 {
  @State message: string = "Hello from component 1491"

  aboutToAppear() {
    console.log("Component 1491 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
