@Component
struct TestComponent1739 {
  @State message: string = "Hello from component 1739"

  aboutToAppear() {
    console.log("Component 1739 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
