@Component
struct TestComponent1734 {
  @State message: string = "Hello from component 1734"

  aboutToAppear() {
    console.log("Component 1734 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
