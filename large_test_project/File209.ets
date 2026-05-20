@Component
struct TestComponent209 {
  @State message: string = "Hello from component 209"

  aboutToAppear() {
    console.log("Component 209 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
