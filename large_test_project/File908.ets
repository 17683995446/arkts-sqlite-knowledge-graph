@Component
struct TestComponent908 {
  @State message: string = "Hello from component 908"

  aboutToAppear() {
    console.log("Component 908 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
