@Component
struct TestComponent1047 {
  @State message: string = "Hello from component 1047"

  aboutToAppear() {
    console.log("Component 1047 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
