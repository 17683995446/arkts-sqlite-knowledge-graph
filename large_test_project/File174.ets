@Component
struct TestComponent174 {
  @State message: string = "Hello from component 174"

  aboutToAppear() {
    console.log("Component 174 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
