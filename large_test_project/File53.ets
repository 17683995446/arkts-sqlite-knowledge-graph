@Component
struct TestComponent53 {
  @State message: string = "Hello from component 53"

  aboutToAppear() {
    console.log("Component 53 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
