@Component
struct TestComponent50 {
  @State message: string = "Hello from component 50"

  aboutToAppear() {
    console.log("Component 50 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
