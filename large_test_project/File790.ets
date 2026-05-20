@Component
struct TestComponent790 {
  @State message: string = "Hello from component 790"

  aboutToAppear() {
    console.log("Component 790 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
