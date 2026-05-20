@Component
struct TestComponent181 {
  @State message: string = "Hello from component 181"

  aboutToAppear() {
    console.log("Component 181 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
