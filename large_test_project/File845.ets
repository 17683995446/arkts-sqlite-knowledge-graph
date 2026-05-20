@Component
struct TestComponent845 {
  @State message: string = "Hello from component 845"

  aboutToAppear() {
    console.log("Component 845 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
