@Component
struct TestComponent223 {
  @State message: string = "Hello from component 223"

  aboutToAppear() {
    console.log("Component 223 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
