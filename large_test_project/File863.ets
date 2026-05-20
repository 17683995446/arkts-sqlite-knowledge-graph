@Component
struct TestComponent863 {
  @State message: string = "Hello from component 863"

  aboutToAppear() {
    console.log("Component 863 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
