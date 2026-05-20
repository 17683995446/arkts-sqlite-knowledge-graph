@Component
struct TestComponent632 {
  @State message: string = "Hello from component 632"

  aboutToAppear() {
    console.log("Component 632 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
