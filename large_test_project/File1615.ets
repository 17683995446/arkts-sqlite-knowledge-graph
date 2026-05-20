@Component
struct TestComponent1615 {
  @State message: string = "Hello from component 1615"

  aboutToAppear() {
    console.log("Component 1615 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
