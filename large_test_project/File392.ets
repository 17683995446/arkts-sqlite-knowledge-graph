@Component
struct TestComponent392 {
  @State message: string = "Hello from component 392"

  aboutToAppear() {
    console.log("Component 392 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
