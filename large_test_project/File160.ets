@Component
struct TestComponent160 {
  @State message: string = "Hello from component 160"

  aboutToAppear() {
    console.log("Component 160 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
