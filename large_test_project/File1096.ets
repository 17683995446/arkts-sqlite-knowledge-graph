@Component
struct TestComponent1096 {
  @State message: string = "Hello from component 1096"

  aboutToAppear() {
    console.log("Component 1096 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
