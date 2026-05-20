@Component
struct TestComponent970 {
  @State message: string = "Hello from component 970"

  aboutToAppear() {
    console.log("Component 970 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
