@Component
struct TestComponent1138 {
  @State message: string = "Hello from component 1138"

  aboutToAppear() {
    console.log("Component 1138 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
