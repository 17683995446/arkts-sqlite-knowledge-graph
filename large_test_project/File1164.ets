@Component
struct TestComponent1164 {
  @State message: string = "Hello from component 1164"

  aboutToAppear() {
    console.log("Component 1164 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
