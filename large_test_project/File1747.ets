@Component
struct TestComponent1747 {
  @State message: string = "Hello from component 1747"

  aboutToAppear() {
    console.log("Component 1747 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
