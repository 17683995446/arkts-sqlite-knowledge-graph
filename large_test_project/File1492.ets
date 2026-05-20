@Component
struct TestComponent1492 {
  @State message: string = "Hello from component 1492"

  aboutToAppear() {
    console.log("Component 1492 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
