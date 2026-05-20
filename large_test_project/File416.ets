@Component
struct TestComponent416 {
  @State message: string = "Hello from component 416"

  aboutToAppear() {
    console.log("Component 416 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
