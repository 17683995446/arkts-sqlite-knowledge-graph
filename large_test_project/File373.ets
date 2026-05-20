@Component
struct TestComponent373 {
  @State message: string = "Hello from component 373"

  aboutToAppear() {
    console.log("Component 373 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
