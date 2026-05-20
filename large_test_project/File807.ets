@Component
struct TestComponent807 {
  @State message: string = "Hello from component 807"

  aboutToAppear() {
    console.log("Component 807 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
