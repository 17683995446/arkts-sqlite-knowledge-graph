@Component
struct TestComponent869 {
  @State message: string = "Hello from component 869"

  aboutToAppear() {
    console.log("Component 869 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
