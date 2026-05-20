@Component
struct TestComponent882 {
  @State message: string = "Hello from component 882"

  aboutToAppear() {
    console.log("Component 882 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
