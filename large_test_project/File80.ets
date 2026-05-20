@Component
struct TestComponent80 {
  @State message: string = "Hello from component 80"

  aboutToAppear() {
    console.log("Component 80 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
