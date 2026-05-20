@Component
struct TestComponent626 {
  @State message: string = "Hello from component 626"

  aboutToAppear() {
    console.log("Component 626 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
