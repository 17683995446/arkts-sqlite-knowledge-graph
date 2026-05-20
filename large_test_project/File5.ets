@Component
struct TestComponent5 {
  @State message: string = "Hello from component 5"

  aboutToAppear() {
    console.log("Component 5 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
