@Component
struct TestComponent1557 {
  @State message: string = "Hello from component 1557"

  aboutToAppear() {
    console.log("Component 1557 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
