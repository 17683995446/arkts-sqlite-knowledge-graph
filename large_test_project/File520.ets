@Component
struct TestComponent520 {
  @State message: string = "Hello from component 520"

  aboutToAppear() {
    console.log("Component 520 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
