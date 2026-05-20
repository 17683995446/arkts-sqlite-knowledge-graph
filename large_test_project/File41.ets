@Component
struct TestComponent41 {
  @State message: string = "Hello from component 41"

  aboutToAppear() {
    console.log("Component 41 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
