@Component
struct TestComponent584 {
  @State message: string = "Hello from component 584"

  aboutToAppear() {
    console.log("Component 584 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
