@Component
struct TestComponent733 {
  @State message: string = "Hello from component 733"

  aboutToAppear() {
    console.log("Component 733 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
