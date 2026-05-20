@Component
struct TestComponent227 {
  @State message: string = "Hello from component 227"

  aboutToAppear() {
    console.log("Component 227 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
