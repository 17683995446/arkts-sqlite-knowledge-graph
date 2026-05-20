@Component
struct TestComponent921 {
  @State message: string = "Hello from component 921"

  aboutToAppear() {
    console.log("Component 921 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
