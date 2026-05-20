@Component
struct TestComponent533 {
  @State message: string = "Hello from component 533"

  aboutToAppear() {
    console.log("Component 533 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
