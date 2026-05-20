@Component
struct TestComponent909 {
  @State message: string = "Hello from component 909"

  aboutToAppear() {
    console.log("Component 909 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
