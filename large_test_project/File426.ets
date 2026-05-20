@Component
struct TestComponent426 {
  @State message: string = "Hello from component 426"

  aboutToAppear() {
    console.log("Component 426 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
