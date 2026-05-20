@Component
struct TestComponent749 {
  @State message: string = "Hello from component 749"

  aboutToAppear() {
    console.log("Component 749 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
