@Component
struct TestComponent1611 {
  @State message: string = "Hello from component 1611"

  aboutToAppear() {
    console.log("Component 1611 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
