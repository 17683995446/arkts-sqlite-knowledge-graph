@Component
struct TestComponent1412 {
  @State message: string = "Hello from component 1412"

  aboutToAppear() {
    console.log("Component 1412 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
