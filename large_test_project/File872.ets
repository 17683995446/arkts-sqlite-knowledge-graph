@Component
struct TestComponent872 {
  @State message: string = "Hello from component 872"

  aboutToAppear() {
    console.log("Component 872 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
