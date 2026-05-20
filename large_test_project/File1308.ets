@Component
struct TestComponent1308 {
  @State message: string = "Hello from component 1308"

  aboutToAppear() {
    console.log("Component 1308 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
