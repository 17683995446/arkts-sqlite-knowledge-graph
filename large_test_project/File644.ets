@Component
struct TestComponent644 {
  @State message: string = "Hello from component 644"

  aboutToAppear() {
    console.log("Component 644 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
