@Component
struct TestComponent45 {
  @State message: string = "Hello from component 45"

  aboutToAppear() {
    console.log("Component 45 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
