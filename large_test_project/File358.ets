@Component
struct TestComponent358 {
  @State message: string = "Hello from component 358"

  aboutToAppear() {
    console.log("Component 358 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
