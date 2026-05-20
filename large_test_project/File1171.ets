@Component
struct TestComponent1171 {
  @State message: string = "Hello from component 1171"

  aboutToAppear() {
    console.log("Component 1171 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
