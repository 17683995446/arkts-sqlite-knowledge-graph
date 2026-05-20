@Component
struct TestComponent739 {
  @State message: string = "Hello from component 739"

  aboutToAppear() {
    console.log("Component 739 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
