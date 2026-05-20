@Component
struct TestComponent321 {
  @State message: string = "Hello from component 321"

  aboutToAppear() {
    console.log("Component 321 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
