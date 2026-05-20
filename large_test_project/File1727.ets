@Component
struct TestComponent1727 {
  @State message: string = "Hello from component 1727"

  aboutToAppear() {
    console.log("Component 1727 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
