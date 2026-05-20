@Component
struct TestComponent14 {
  @State message: string = "Hello from component 14"

  aboutToAppear() {
    console.log("Component 14 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
