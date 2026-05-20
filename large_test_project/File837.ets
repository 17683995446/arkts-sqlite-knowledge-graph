@Component
struct TestComponent837 {
  @State message: string = "Hello from component 837"

  aboutToAppear() {
    console.log("Component 837 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
