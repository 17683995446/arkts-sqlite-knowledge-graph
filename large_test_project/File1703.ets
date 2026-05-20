@Component
struct TestComponent1703 {
  @State message: string = "Hello from component 1703"

  aboutToAppear() {
    console.log("Component 1703 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
