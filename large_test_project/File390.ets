@Component
struct TestComponent390 {
  @State message: string = "Hello from component 390"

  aboutToAppear() {
    console.log("Component 390 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
