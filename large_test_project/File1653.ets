@Component
struct TestComponent1653 {
  @State message: string = "Hello from component 1653"

  aboutToAppear() {
    console.log("Component 1653 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
