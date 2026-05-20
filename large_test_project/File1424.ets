@Component
struct TestComponent1424 {
  @State message: string = "Hello from component 1424"

  aboutToAppear() {
    console.log("Component 1424 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
