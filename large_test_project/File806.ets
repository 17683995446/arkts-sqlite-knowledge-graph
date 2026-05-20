@Component
struct TestComponent806 {
  @State message: string = "Hello from component 806"

  aboutToAppear() {
    console.log("Component 806 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
