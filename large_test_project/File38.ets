@Component
struct TestComponent38 {
  @State message: string = "Hello from component 38"

  aboutToAppear() {
    console.log("Component 38 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
