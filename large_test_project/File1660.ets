@Component
struct TestComponent1660 {
  @State message: string = "Hello from component 1660"

  aboutToAppear() {
    console.log("Component 1660 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
