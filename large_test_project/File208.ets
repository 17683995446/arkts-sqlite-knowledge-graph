@Component
struct TestComponent208 {
  @State message: string = "Hello from component 208"

  aboutToAppear() {
    console.log("Component 208 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
