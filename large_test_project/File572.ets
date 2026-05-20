@Component
struct TestComponent572 {
  @State message: string = "Hello from component 572"

  aboutToAppear() {
    console.log("Component 572 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
