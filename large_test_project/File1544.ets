@Component
struct TestComponent1544 {
  @State message: string = "Hello from component 1544"

  aboutToAppear() {
    console.log("Component 1544 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
