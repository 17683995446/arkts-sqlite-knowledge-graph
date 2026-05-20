@Component
struct TestComponent132 {
  @State message: string = "Hello from component 132"

  aboutToAppear() {
    console.log("Component 132 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
