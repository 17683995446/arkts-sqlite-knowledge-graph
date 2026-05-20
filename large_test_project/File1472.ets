@Component
struct TestComponent1472 {
  @State message: string = "Hello from component 1472"

  aboutToAppear() {
    console.log("Component 1472 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
