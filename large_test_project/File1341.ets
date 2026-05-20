@Component
struct TestComponent1341 {
  @State message: string = "Hello from component 1341"

  aboutToAppear() {
    console.log("Component 1341 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
