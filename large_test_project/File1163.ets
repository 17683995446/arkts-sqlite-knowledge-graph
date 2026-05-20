@Component
struct TestComponent1163 {
  @State message: string = "Hello from component 1163"

  aboutToAppear() {
    console.log("Component 1163 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
