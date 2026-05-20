@Component
struct TestComponent617 {
  @State message: string = "Hello from component 617"

  aboutToAppear() {
    console.log("Component 617 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
