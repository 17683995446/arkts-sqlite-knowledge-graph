@Component
struct TestComponent1100 {
  @State message: string = "Hello from component 1100"

  aboutToAppear() {
    console.log("Component 1100 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
