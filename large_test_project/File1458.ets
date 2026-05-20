@Component
struct TestComponent1458 {
  @State message: string = "Hello from component 1458"

  aboutToAppear() {
    console.log("Component 1458 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
