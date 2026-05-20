@Component
struct TestComponent852 {
  @State message: string = "Hello from component 852"

  aboutToAppear() {
    console.log("Component 852 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
