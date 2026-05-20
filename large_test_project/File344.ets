@Component
struct TestComponent344 {
  @State message: string = "Hello from component 344"

  aboutToAppear() {
    console.log("Component 344 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
