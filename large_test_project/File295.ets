@Component
struct TestComponent295 {
  @State message: string = "Hello from component 295"

  aboutToAppear() {
    console.log("Component 295 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
