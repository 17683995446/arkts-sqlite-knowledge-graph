@Component
struct TestComponent93 {
  @State message: string = "Hello from component 93"

  aboutToAppear() {
    console.log("Component 93 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
