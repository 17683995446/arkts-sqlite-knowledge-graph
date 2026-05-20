@Component
struct TestComponent942 {
  @State message: string = "Hello from component 942"

  aboutToAppear() {
    console.log("Component 942 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
