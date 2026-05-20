@Component
struct TestComponent1953 {
  @State message: string = "Hello from component 1953"

  aboutToAppear() {
    console.log("Component 1953 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
