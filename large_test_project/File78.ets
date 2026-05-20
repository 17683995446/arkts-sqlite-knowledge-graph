@Component
struct TestComponent78 {
  @State message: string = "Hello from component 78"

  aboutToAppear() {
    console.log("Component 78 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
