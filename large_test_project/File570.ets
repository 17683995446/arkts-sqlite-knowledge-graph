@Component
struct TestComponent570 {
  @State message: string = "Hello from component 570"

  aboutToAppear() {
    console.log("Component 570 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
