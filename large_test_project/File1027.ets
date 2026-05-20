@Component
struct TestComponent1027 {
  @State message: string = "Hello from component 1027"

  aboutToAppear() {
    console.log("Component 1027 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
