@Component
struct TestComponent517 {
  @State message: string = "Hello from component 517"

  aboutToAppear() {
    console.log("Component 517 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
