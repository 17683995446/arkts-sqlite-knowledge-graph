@Component
struct TestComponent311 {
  @State message: string = "Hello from component 311"

  aboutToAppear() {
    console.log("Component 311 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
