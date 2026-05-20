@Component
struct TestComponent1592 {
  @State message: string = "Hello from component 1592"

  aboutToAppear() {
    console.log("Component 1592 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
