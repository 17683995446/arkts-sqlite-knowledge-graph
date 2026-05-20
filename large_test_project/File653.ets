@Component
struct TestComponent653 {
  @State message: string = "Hello from component 653"

  aboutToAppear() {
    console.log("Component 653 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
