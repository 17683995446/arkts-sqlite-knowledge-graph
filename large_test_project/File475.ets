@Component
struct TestComponent475 {
  @State message: string = "Hello from component 475"

  aboutToAppear() {
    console.log("Component 475 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
