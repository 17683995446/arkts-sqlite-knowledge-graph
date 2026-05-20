@Component
struct TestComponent542 {
  @State message: string = "Hello from component 542"

  aboutToAppear() {
    console.log("Component 542 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
