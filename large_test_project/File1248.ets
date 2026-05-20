@Component
struct TestComponent1248 {
  @State message: string = "Hello from component 1248"

  aboutToAppear() {
    console.log("Component 1248 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
