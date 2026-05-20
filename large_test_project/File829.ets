@Component
struct TestComponent829 {
  @State message: string = "Hello from component 829"

  aboutToAppear() {
    console.log("Component 829 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
