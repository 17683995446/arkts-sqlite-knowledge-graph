@Component
struct TestComponent610 {
  @State message: string = "Hello from component 610"

  aboutToAppear() {
    console.log("Component 610 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
