@Component
struct TestComponent65 {
  @State message: string = "Hello from component 65"

  aboutToAppear() {
    console.log("Component 65 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
