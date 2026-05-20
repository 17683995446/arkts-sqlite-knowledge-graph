@Component
struct TestComponent95 {
  @State message: string = "Hello from component 95"

  aboutToAppear() {
    console.log("Component 95 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
