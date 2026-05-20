@Component
struct TestComponent1736 {
  @State message: string = "Hello from component 1736"

  aboutToAppear() {
    console.log("Component 1736 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
