@Component
struct TestComponent1291 {
  @State message: string = "Hello from component 1291"

  aboutToAppear() {
    console.log("Component 1291 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
