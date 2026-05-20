@Component
struct TestComponent871 {
  @State message: string = "Hello from component 871"

  aboutToAppear() {
    console.log("Component 871 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
