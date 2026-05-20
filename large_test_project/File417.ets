@Component
struct TestComponent417 {
  @State message: string = "Hello from component 417"

  aboutToAppear() {
    console.log("Component 417 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
