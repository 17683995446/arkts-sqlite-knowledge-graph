@Component
struct TestComponent184 {
  @State message: string = "Hello from component 184"

  aboutToAppear() {
    console.log("Component 184 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
