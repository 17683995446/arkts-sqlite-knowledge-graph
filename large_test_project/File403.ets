@Component
struct TestComponent403 {
  @State message: string = "Hello from component 403"

  aboutToAppear() {
    console.log("Component 403 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
