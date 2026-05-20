@Component
struct TestComponent1626 {
  @State message: string = "Hello from component 1626"

  aboutToAppear() {
    console.log("Component 1626 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
