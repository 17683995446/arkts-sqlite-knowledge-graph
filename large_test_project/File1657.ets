@Component
struct TestComponent1657 {
  @State message: string = "Hello from component 1657"

  aboutToAppear() {
    console.log("Component 1657 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
