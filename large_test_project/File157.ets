@Component
struct TestComponent157 {
  @State message: string = "Hello from component 157"

  aboutToAppear() {
    console.log("Component 157 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
