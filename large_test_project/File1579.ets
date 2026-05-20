@Component
struct TestComponent1579 {
  @State message: string = "Hello from component 1579"

  aboutToAppear() {
    console.log("Component 1579 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
