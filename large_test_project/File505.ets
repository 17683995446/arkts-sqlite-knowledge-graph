@Component
struct TestComponent505 {
  @State message: string = "Hello from component 505"

  aboutToAppear() {
    console.log("Component 505 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
