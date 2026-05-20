@Component
struct TestComponent322 {
  @State message: string = "Hello from component 322"

  aboutToAppear() {
    console.log("Component 322 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
