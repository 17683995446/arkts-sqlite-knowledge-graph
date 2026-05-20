@Component
struct TestComponent596 {
  @State message: string = "Hello from component 596"

  aboutToAppear() {
    console.log("Component 596 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
