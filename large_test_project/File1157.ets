@Component
struct TestComponent1157 {
  @State message: string = "Hello from component 1157"

  aboutToAppear() {
    console.log("Component 1157 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
