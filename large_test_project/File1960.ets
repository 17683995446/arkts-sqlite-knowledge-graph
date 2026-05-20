@Component
struct TestComponent1960 {
  @State message: string = "Hello from component 1960"

  aboutToAppear() {
    console.log("Component 1960 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
