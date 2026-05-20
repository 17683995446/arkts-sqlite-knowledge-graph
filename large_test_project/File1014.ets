@Component
struct TestComponent1014 {
  @State message: string = "Hello from component 1014"

  aboutToAppear() {
    console.log("Component 1014 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
