@Component
struct TestComponent568 {
  @State message: string = "Hello from component 568"

  aboutToAppear() {
    console.log("Component 568 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
