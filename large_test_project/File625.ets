@Component
struct TestComponent625 {
  @State message: string = "Hello from component 625"

  aboutToAppear() {
    console.log("Component 625 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
