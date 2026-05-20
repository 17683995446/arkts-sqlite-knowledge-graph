@Component
struct TestComponent747 {
  @State message: string = "Hello from component 747"

  aboutToAppear() {
    console.log("Component 747 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
