@Component
struct TestComponent1516 {
  @State message: string = "Hello from component 1516"

  aboutToAppear() {
    console.log("Component 1516 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
