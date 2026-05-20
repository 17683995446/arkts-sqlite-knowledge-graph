@Component
struct TestComponent164 {
  @State message: string = "Hello from component 164"

  aboutToAppear() {
    console.log("Component 164 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
