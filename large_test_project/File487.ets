@Component
struct TestComponent487 {
  @State message: string = "Hello from component 487"

  aboutToAppear() {
    console.log("Component 487 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
