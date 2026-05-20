@Component
struct TestComponent104 {
  @State message: string = "Hello from component 104"

  aboutToAppear() {
    console.log("Component 104 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
