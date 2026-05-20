@Component
struct TestComponent1345 {
  @State message: string = "Hello from component 1345"

  aboutToAppear() {
    console.log("Component 1345 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
