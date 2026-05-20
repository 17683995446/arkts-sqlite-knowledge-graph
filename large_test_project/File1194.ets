@Component
struct TestComponent1194 {
  @State message: string = "Hello from component 1194"

  aboutToAppear() {
    console.log("Component 1194 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
