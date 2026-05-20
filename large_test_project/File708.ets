@Component
struct TestComponent708 {
  @State message: string = "Hello from component 708"

  aboutToAppear() {
    console.log("Component 708 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
