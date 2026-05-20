@Component
struct TestComponent935 {
  @State message: string = "Hello from component 935"

  aboutToAppear() {
    console.log("Component 935 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
