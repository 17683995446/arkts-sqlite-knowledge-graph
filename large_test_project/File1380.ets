@Component
struct TestComponent1380 {
  @State message: string = "Hello from component 1380"

  aboutToAppear() {
    console.log("Component 1380 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
