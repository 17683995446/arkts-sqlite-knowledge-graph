@Component
struct TestComponent116 {
  @State message: string = "Hello from component 116"

  aboutToAppear() {
    console.log("Component 116 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
