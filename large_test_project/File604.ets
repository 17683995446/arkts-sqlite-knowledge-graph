@Component
struct TestComponent604 {
  @State message: string = "Hello from component 604"

  aboutToAppear() {
    console.log("Component 604 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
