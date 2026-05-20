@Component
struct TestComponent241 {
  @State message: string = "Hello from component 241"

  aboutToAppear() {
    console.log("Component 241 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
