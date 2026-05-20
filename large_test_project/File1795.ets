@Component
struct TestComponent1795 {
  @State message: string = "Hello from component 1795"

  aboutToAppear() {
    console.log("Component 1795 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
