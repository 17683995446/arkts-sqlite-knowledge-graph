@Component
struct TestComponent1537 {
  @State message: string = "Hello from component 1537"

  aboutToAppear() {
    console.log("Component 1537 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
