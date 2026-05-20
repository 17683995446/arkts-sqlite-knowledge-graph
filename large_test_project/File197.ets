@Component
struct TestComponent197 {
  @State message: string = "Hello from component 197"

  aboutToAppear() {
    console.log("Component 197 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
