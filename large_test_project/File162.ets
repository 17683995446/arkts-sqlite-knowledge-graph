@Component
struct TestComponent162 {
  @State message: string = "Hello from component 162"

  aboutToAppear() {
    console.log("Component 162 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
