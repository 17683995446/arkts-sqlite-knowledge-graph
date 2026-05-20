@Component
struct TestComponent138 {
  @State message: string = "Hello from component 138"

  aboutToAppear() {
    console.log("Component 138 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
