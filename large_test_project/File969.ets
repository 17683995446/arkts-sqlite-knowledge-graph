@Component
struct TestComponent969 {
  @State message: string = "Hello from component 969"

  aboutToAppear() {
    console.log("Component 969 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
