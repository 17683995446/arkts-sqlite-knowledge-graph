@Component
struct TestComponent26 {
  @State message: string = "Hello from component 26"

  aboutToAppear() {
    console.log("Component 26 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
