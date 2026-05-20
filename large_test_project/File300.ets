@Component
struct TestComponent300 {
  @State message: string = "Hello from component 300"

  aboutToAppear() {
    console.log("Component 300 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
