@Component
struct TestComponent1426 {
  @State message: string = "Hello from component 1426"

  aboutToAppear() {
    console.log("Component 1426 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
