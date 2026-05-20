@Component
struct TestComponent432 {
  @State message: string = "Hello from component 432"

  aboutToAppear() {
    console.log("Component 432 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
