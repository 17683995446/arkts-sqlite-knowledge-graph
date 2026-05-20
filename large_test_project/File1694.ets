@Component
struct TestComponent1694 {
  @State message: string = "Hello from component 1694"

  aboutToAppear() {
    console.log("Component 1694 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
