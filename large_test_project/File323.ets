@Component
struct TestComponent323 {
  @State message: string = "Hello from component 323"

  aboutToAppear() {
    console.log("Component 323 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
