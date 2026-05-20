@Component
struct TestComponent378 {
  @State message: string = "Hello from component 378"

  aboutToAppear() {
    console.log("Component 378 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
