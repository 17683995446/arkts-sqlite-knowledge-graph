@Component
struct TestComponent911 {
  @State message: string = "Hello from component 911"

  aboutToAppear() {
    console.log("Component 911 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
