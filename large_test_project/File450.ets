@Component
struct TestComponent450 {
  @State message: string = "Hello from component 450"

  aboutToAppear() {
    console.log("Component 450 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
