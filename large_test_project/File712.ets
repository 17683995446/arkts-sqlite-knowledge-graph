@Component
struct TestComponent712 {
  @State message: string = "Hello from component 712"

  aboutToAppear() {
    console.log("Component 712 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
