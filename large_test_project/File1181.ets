@Component
struct TestComponent1181 {
  @State message: string = "Hello from component 1181"

  aboutToAppear() {
    console.log("Component 1181 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
