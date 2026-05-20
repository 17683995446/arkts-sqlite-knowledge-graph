@Component
struct TestComponent8 {
  @State message: string = "Hello from component 8"

  aboutToAppear() {
    console.log("Component 8 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
