@Component
struct TestComponent611 {
  @State message: string = "Hello from component 611"

  aboutToAppear() {
    console.log("Component 611 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
