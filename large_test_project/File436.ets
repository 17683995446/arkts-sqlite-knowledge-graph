@Component
struct TestComponent436 {
  @State message: string = "Hello from component 436"

  aboutToAppear() {
    console.log("Component 436 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
