@Component
struct TestComponent500 {
  @State message: string = "Hello from component 500"

  aboutToAppear() {
    console.log("Component 500 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
