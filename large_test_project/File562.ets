@Component
struct TestComponent562 {
  @State message: string = "Hello from component 562"

  aboutToAppear() {
    console.log("Component 562 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
