@Component
struct TestComponent674 {
  @State message: string = "Hello from component 674"

  aboutToAppear() {
    console.log("Component 674 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
