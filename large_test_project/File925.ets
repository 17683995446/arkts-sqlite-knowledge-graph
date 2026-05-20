@Component
struct TestComponent925 {
  @State message: string = "Hello from component 925"

  aboutToAppear() {
    console.log("Component 925 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
