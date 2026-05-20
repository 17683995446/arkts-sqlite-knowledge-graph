@Component
struct TestComponent340 {
  @State message: string = "Hello from component 340"

  aboutToAppear() {
    console.log("Component 340 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
