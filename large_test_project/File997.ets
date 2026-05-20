@Component
struct TestComponent997 {
  @State message: string = "Hello from component 997"

  aboutToAppear() {
    console.log("Component 997 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
