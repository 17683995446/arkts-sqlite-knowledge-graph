@Component
struct TestComponent293 {
  @State message: string = "Hello from component 293"

  aboutToAppear() {
    console.log("Component 293 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
