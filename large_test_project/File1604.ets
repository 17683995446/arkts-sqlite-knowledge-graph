@Component
struct TestComponent1604 {
  @State message: string = "Hello from component 1604"

  aboutToAppear() {
    console.log("Component 1604 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
