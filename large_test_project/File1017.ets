@Component
struct TestComponent1017 {
  @State message: string = "Hello from component 1017"

  aboutToAppear() {
    console.log("Component 1017 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
