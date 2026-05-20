@Component
struct TestComponent37 {
  @State message: string = "Hello from component 37"

  aboutToAppear() {
    console.log("Component 37 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
