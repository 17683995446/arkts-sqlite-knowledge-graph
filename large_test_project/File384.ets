@Component
struct TestComponent384 {
  @State message: string = "Hello from component 384"

  aboutToAppear() {
    console.log("Component 384 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
