@Component
struct TestComponent721 {
  @State message: string = "Hello from component 721"

  aboutToAppear() {
    console.log("Component 721 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
