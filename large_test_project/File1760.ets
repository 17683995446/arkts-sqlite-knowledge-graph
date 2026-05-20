@Component
struct TestComponent1760 {
  @State message: string = "Hello from component 1760"

  aboutToAppear() {
    console.log("Component 1760 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
