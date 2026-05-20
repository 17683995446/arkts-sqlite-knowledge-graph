@Component
struct TestComponent1060 {
  @State message: string = "Hello from component 1060"

  aboutToAppear() {
    console.log("Component 1060 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
