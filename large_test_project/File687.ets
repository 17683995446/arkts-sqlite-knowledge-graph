@Component
struct TestComponent687 {
  @State message: string = "Hello from component 687"

  aboutToAppear() {
    console.log("Component 687 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
