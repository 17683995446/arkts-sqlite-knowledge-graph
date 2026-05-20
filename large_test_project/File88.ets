@Component
struct TestComponent88 {
  @State message: string = "Hello from component 88"

  aboutToAppear() {
    console.log("Component 88 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
