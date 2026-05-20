@Component
struct TestComponent779 {
  @State message: string = "Hello from component 779"

  aboutToAppear() {
    console.log("Component 779 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
