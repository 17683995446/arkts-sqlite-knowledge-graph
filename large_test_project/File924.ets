@Component
struct TestComponent924 {
  @State message: string = "Hello from component 924"

  aboutToAppear() {
    console.log("Component 924 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
