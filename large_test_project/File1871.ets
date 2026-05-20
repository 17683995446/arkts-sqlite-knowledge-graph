@Component
struct TestComponent1871 {
  @State message: string = "Hello from component 1871"

  aboutToAppear() {
    console.log("Component 1871 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
