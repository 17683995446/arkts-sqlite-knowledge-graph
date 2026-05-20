@Component
struct TestComponent277 {
  @State message: string = "Hello from component 277"

  aboutToAppear() {
    console.log("Component 277 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
