@Component
struct TestComponent1221 {
  @State message: string = "Hello from component 1221"

  aboutToAppear() {
    console.log("Component 1221 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
