@Component
struct TestComponent609 {
  @State message: string = "Hello from component 609"

  aboutToAppear() {
    console.log("Component 609 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
