@Component
struct TestComponent1541 {
  @State message: string = "Hello from component 1541"

  aboutToAppear() {
    console.log("Component 1541 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
