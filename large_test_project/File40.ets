@Component
struct TestComponent40 {
  @State message: string = "Hello from component 40"

  aboutToAppear() {
    console.log("Component 40 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
