@Component
struct TestComponent49 {
  @State message: string = "Hello from component 49"

  aboutToAppear() {
    console.log("Component 49 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
