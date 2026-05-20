@Component
struct TestComponent51 {
  @State message: string = "Hello from component 51"

  aboutToAppear() {
    console.log("Component 51 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
