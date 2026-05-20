@Component
struct TestComponent18 {
  @State message: string = "Hello from component 18"

  aboutToAppear() {
    console.log("Component 18 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
