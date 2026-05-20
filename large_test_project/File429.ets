@Component
struct TestComponent429 {
  @State message: string = "Hello from component 429"

  aboutToAppear() {
    console.log("Component 429 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
