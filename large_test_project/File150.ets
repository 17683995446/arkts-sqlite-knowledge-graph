@Component
struct TestComponent150 {
  @State message: string = "Hello from component 150"

  aboutToAppear() {
    console.log("Component 150 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
