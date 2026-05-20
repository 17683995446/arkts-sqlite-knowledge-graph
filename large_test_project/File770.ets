@Component
struct TestComponent770 {
  @State message: string = "Hello from component 770"

  aboutToAppear() {
    console.log("Component 770 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
