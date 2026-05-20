@Component
struct TestComponent567 {
  @State message: string = "Hello from component 567"

  aboutToAppear() {
    console.log("Component 567 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
