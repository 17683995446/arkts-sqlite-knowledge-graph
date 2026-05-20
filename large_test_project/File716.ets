@Component
struct TestComponent716 {
  @State message: string = "Hello from component 716"

  aboutToAppear() {
    console.log("Component 716 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
