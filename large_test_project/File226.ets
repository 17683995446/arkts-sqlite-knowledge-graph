@Component
struct TestComponent226 {
  @State message: string = "Hello from component 226"

  aboutToAppear() {
    console.log("Component 226 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
