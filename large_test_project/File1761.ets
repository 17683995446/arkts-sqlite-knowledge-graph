@Component
struct TestComponent1761 {
  @State message: string = "Hello from component 1761"

  aboutToAppear() {
    console.log("Component 1761 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
