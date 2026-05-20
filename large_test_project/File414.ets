@Component
struct TestComponent414 {
  @State message: string = "Hello from component 414"

  aboutToAppear() {
    console.log("Component 414 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
