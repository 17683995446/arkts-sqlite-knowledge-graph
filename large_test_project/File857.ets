@Component
struct TestComponent857 {
  @State message: string = "Hello from component 857"

  aboutToAppear() {
    console.log("Component 857 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
