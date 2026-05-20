@Component
struct TestComponent530 {
  @State message: string = "Hello from component 530"

  aboutToAppear() {
    console.log("Component 530 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
