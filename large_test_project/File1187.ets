@Component
struct TestComponent1187 {
  @State message: string = "Hello from component 1187"

  aboutToAppear() {
    console.log("Component 1187 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
