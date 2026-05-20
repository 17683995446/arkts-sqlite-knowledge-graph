@Component
struct TestComponent892 {
  @State message: string = "Hello from component 892"

  aboutToAppear() {
    console.log("Component 892 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
