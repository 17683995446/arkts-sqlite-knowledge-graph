@Component
struct TestComponent327 {
  @State message: string = "Hello from component 327"

  aboutToAppear() {
    console.log("Component 327 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
