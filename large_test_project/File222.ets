@Component
struct TestComponent222 {
  @State message: string = "Hello from component 222"

  aboutToAppear() {
    console.log("Component 222 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
