@Component
struct TestComponent928 {
  @State message: string = "Hello from component 928"

  aboutToAppear() {
    console.log("Component 928 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
