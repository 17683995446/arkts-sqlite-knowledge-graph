@Component
struct TestComponent944 {
  @State message: string = "Hello from component 944"

  aboutToAppear() {
    console.log("Component 944 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
