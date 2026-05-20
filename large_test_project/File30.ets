@Component
struct TestComponent30 {
  @State message: string = "Hello from component 30"

  aboutToAppear() {
    console.log("Component 30 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
