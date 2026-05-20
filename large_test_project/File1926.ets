@Component
struct TestComponent1926 {
  @State message: string = "Hello from component 1926"

  aboutToAppear() {
    console.log("Component 1926 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
