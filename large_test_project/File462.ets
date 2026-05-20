@Component
struct TestComponent462 {
  @State message: string = "Hello from component 462"

  aboutToAppear() {
    console.log("Component 462 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
