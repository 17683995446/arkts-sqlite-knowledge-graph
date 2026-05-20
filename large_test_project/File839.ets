@Component
struct TestComponent839 {
  @State message: string = "Hello from component 839"

  aboutToAppear() {
    console.log("Component 839 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
