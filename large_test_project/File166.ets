@Component
struct TestComponent166 {
  @State message: string = "Hello from component 166"

  aboutToAppear() {
    console.log("Component 166 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
