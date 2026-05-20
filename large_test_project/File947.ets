@Component
struct TestComponent947 {
  @State message: string = "Hello from component 947"

  aboutToAppear() {
    console.log("Component 947 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
