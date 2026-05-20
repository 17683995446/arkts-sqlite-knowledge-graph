@Component
struct TestComponent736 {
  @State message: string = "Hello from component 736"

  aboutToAppear() {
    console.log("Component 736 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
