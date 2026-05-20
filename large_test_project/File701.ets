@Component
struct TestComponent701 {
  @State message: string = "Hello from component 701"

  aboutToAppear() {
    console.log("Component 701 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
