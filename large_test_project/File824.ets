@Component
struct TestComponent824 {
  @State message: string = "Hello from component 824"

  aboutToAppear() {
    console.log("Component 824 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
