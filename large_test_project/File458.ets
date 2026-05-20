@Component
struct TestComponent458 {
  @State message: string = "Hello from component 458"

  aboutToAppear() {
    console.log("Component 458 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
