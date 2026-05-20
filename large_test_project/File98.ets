@Component
struct TestComponent98 {
  @State message: string = "Hello from component 98"

  aboutToAppear() {
    console.log("Component 98 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
