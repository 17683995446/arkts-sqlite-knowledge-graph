@Component
struct TestComponent220 {
  @State message: string = "Hello from component 220"

  aboutToAppear() {
    console.log("Component 220 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
