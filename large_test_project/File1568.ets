@Component
struct TestComponent1568 {
  @State message: string = "Hello from component 1568"

  aboutToAppear() {
    console.log("Component 1568 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
