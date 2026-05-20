@Component
struct TestComponent634 {
  @State message: string = "Hello from component 634"

  aboutToAppear() {
    console.log("Component 634 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
