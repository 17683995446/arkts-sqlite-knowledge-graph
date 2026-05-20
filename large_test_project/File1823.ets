@Component
struct TestComponent1823 {
  @State message: string = "Hello from component 1823"

  aboutToAppear() {
    console.log("Component 1823 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
