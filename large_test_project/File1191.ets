@Component
struct TestComponent1191 {
  @State message: string = "Hello from component 1191"

  aboutToAppear() {
    console.log("Component 1191 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
