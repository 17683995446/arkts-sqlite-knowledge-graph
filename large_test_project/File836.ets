@Component
struct TestComponent836 {
  @State message: string = "Hello from component 836"

  aboutToAppear() {
    console.log("Component 836 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
