@Component
struct TestComponent886 {
  @State message: string = "Hello from component 886"

  aboutToAppear() {
    console.log("Component 886 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
