@Component
struct TestComponent96 {
  @State message: string = "Hello from component 96"

  aboutToAppear() {
    console.log("Component 96 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
