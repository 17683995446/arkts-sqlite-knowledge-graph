@Component
struct TestComponent180 {
  @State message: string = "Hello from component 180"

  aboutToAppear() {
    console.log("Component 180 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
