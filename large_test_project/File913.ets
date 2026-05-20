@Component
struct TestComponent913 {
  @State message: string = "Hello from component 913"

  aboutToAppear() {
    console.log("Component 913 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
