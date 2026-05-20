@Component
struct TestComponent800 {
  @State message: string = "Hello from component 800"

  aboutToAppear() {
    console.log("Component 800 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
