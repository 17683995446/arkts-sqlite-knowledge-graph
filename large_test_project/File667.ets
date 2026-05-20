@Component
struct TestComponent667 {
  @State message: string = "Hello from component 667"

  aboutToAppear() {
    console.log("Component 667 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
