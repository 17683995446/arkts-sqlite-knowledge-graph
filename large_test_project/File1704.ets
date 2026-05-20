@Component
struct TestComponent1704 {
  @State message: string = "Hello from component 1704"

  aboutToAppear() {
    console.log("Component 1704 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
