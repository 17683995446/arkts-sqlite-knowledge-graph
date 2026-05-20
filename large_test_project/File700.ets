@Component
struct TestComponent700 {
  @State message: string = "Hello from component 700"

  aboutToAppear() {
    console.log("Component 700 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
