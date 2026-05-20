@Component
struct TestComponent294 {
  @State message: string = "Hello from component 294"

  aboutToAppear() {
    console.log("Component 294 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
