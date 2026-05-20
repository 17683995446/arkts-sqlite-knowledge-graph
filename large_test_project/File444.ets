@Component
struct TestComponent444 {
  @State message: string = "Hello from component 444"

  aboutToAppear() {
    console.log("Component 444 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
