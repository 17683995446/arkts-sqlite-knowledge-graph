@Component
struct TestComponent585 {
  @State message: string = "Hello from component 585"

  aboutToAppear() {
    console.log("Component 585 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
