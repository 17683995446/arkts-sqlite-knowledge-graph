@Component
struct TestComponent239 {
  @State message: string = "Hello from component 239"

  aboutToAppear() {
    console.log("Component 239 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
