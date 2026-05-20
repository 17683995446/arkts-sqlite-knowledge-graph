@Component
struct TestComponent139 {
  @State message: string = "Hello from component 139"

  aboutToAppear() {
    console.log("Component 139 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
