@Component
struct TestComponent763 {
  @State message: string = "Hello from component 763"

  aboutToAppear() {
    console.log("Component 763 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
