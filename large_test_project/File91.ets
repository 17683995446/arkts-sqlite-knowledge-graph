@Component
struct TestComponent91 {
  @State message: string = "Hello from component 91"

  aboutToAppear() {
    console.log("Component 91 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
