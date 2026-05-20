@Component
struct TestComponent767 {
  @State message: string = "Hello from component 767"

  aboutToAppear() {
    console.log("Component 767 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
