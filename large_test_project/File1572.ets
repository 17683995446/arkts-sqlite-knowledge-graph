@Component
struct TestComponent1572 {
  @State message: string = "Hello from component 1572"

  aboutToAppear() {
    console.log("Component 1572 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
