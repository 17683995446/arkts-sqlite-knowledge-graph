@Component
struct TestComponent786 {
  @State message: string = "Hello from component 786"

  aboutToAppear() {
    console.log("Component 786 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
