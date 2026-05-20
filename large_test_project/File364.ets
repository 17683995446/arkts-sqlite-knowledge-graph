@Component
struct TestComponent364 {
  @State message: string = "Hello from component 364"

  aboutToAppear() {
    console.log("Component 364 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
