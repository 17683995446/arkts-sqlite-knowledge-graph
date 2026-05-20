@Component
struct TestComponent630 {
  @State message: string = "Hello from component 630"

  aboutToAppear() {
    console.log("Component 630 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
