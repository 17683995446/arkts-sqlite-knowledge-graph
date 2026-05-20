@Component
struct TestComponent910 {
  @State message: string = "Hello from component 910"

  aboutToAppear() {
    console.log("Component 910 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
