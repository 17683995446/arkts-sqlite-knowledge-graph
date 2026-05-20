@Component
struct TestComponent281 {
  @State message: string = "Hello from component 281"

  aboutToAppear() {
    console.log("Component 281 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
