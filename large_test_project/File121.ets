@Component
struct TestComponent121 {
  @State message: string = "Hello from component 121"

  aboutToAppear() {
    console.log("Component 121 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
