@Component
struct TestComponent801 {
  @State message: string = "Hello from component 801"

  aboutToAppear() {
    console.log("Component 801 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
