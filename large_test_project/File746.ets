@Component
struct TestComponent746 {
  @State message: string = "Hello from component 746"

  aboutToAppear() {
    console.log("Component 746 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
