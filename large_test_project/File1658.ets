@Component
struct TestComponent1658 {
  @State message: string = "Hello from component 1658"

  aboutToAppear() {
    console.log("Component 1658 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
