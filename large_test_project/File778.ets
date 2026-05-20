@Component
struct TestComponent778 {
  @State message: string = "Hello from component 778"

  aboutToAppear() {
    console.log("Component 778 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
