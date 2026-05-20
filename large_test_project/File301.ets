@Component
struct TestComponent301 {
  @State message: string = "Hello from component 301"

  aboutToAppear() {
    console.log("Component 301 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
