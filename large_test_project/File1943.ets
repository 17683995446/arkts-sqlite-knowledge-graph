@Component
struct TestComponent1943 {
  @State message: string = "Hello from component 1943"

  aboutToAppear() {
    console.log("Component 1943 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
