@Component
struct TestComponent888 {
  @State message: string = "Hello from component 888"

  aboutToAppear() {
    console.log("Component 888 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
