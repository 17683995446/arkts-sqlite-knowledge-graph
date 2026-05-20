@Component
struct TestComponent58 {
  @State message: string = "Hello from component 58"

  aboutToAppear() {
    console.log("Component 58 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
