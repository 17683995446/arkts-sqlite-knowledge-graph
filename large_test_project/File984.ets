@Component
struct TestComponent984 {
  @State message: string = "Hello from component 984"

  aboutToAppear() {
    console.log("Component 984 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
