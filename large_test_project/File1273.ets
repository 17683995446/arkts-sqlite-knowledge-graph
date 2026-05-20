@Component
struct TestComponent1273 {
  @State message: string = "Hello from component 1273"

  aboutToAppear() {
    console.log("Component 1273 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
