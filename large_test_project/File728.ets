@Component
struct TestComponent728 {
  @State message: string = "Hello from component 728"

  aboutToAppear() {
    console.log("Component 728 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
