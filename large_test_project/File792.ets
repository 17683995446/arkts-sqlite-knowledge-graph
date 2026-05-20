@Component
struct TestComponent792 {
  @State message: string = "Hello from component 792"

  aboutToAppear() {
    console.log("Component 792 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
