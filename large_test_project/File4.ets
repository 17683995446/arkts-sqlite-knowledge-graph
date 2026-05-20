@Component
struct TestComponent4 {
  @State message: string = "Hello from component 4"

  aboutToAppear() {
    console.log("Component 4 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
