@Component
struct TestComponent265 {
  @State message: string = "Hello from component 265"

  aboutToAppear() {
    console.log("Component 265 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
