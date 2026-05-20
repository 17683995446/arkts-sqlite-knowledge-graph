@Component
struct TestComponent411 {
  @State message: string = "Hello from component 411"

  aboutToAppear() {
    console.log("Component 411 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
