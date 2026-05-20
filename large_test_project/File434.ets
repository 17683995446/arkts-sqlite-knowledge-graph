@Component
struct TestComponent434 {
  @State message: string = "Hello from component 434"

  aboutToAppear() {
    console.log("Component 434 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
