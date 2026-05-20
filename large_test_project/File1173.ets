@Component
struct TestComponent1173 {
  @State message: string = "Hello from component 1173"

  aboutToAppear() {
    console.log("Component 1173 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
