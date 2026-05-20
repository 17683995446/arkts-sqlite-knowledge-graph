@Component
struct TestComponent1289 {
  @State message: string = "Hello from component 1289"

  aboutToAppear() {
    console.log("Component 1289 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
