@Component
struct TestComponent990 {
  @State message: string = "Hello from component 990"

  aboutToAppear() {
    console.log("Component 990 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
