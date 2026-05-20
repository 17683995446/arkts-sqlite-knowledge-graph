@Component
struct TestComponent354 {
  @State message: string = "Hello from component 354"

  aboutToAppear() {
    console.log("Component 354 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
