@Component
struct TestComponent66 {
  @State message: string = "Hello from component 66"

  aboutToAppear() {
    console.log("Component 66 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
