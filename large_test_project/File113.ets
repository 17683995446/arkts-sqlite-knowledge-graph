@Component
struct TestComponent113 {
  @State message: string = "Hello from component 113"

  aboutToAppear() {
    console.log("Component 113 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
