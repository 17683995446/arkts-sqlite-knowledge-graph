@Component
struct TestComponent805 {
  @State message: string = "Hello from component 805"

  aboutToAppear() {
    console.log("Component 805 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
