@Component
struct TestComponent1405 {
  @State message: string = "Hello from component 1405"

  aboutToAppear() {
    console.log("Component 1405 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
