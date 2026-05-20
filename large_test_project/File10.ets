@Component
struct TestComponent10 {
  @State message: string = "Hello from component 10"

  aboutToAppear() {
    console.log("Component 10 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
