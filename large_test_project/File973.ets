@Component
struct TestComponent973 {
  @State message: string = "Hello from component 973"

  aboutToAppear() {
    console.log("Component 973 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
