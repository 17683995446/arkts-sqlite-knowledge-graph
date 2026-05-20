@Component
struct TestComponent591 {
  @State message: string = "Hello from component 591"

  aboutToAppear() {
    console.log("Component 591 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
