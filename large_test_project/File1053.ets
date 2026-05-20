@Component
struct TestComponent1053 {
  @State message: string = "Hello from component 1053"

  aboutToAppear() {
    console.log("Component 1053 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
