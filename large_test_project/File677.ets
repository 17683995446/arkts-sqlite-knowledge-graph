@Component
struct TestComponent677 {
  @State message: string = "Hello from component 677"

  aboutToAppear() {
    console.log("Component 677 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
