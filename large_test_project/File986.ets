@Component
struct TestComponent986 {
  @State message: string = "Hello from component 986"

  aboutToAppear() {
    console.log("Component 986 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
