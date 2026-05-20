@Component
struct TestComponent748 {
  @State message: string = "Hello from component 748"

  aboutToAppear() {
    console.log("Component 748 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
