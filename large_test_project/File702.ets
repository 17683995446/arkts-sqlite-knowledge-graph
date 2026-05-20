@Component
struct TestComponent702 {
  @State message: string = "Hello from component 702"

  aboutToAppear() {
    console.log("Component 702 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
