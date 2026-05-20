@Component
struct TestComponent152 {
  @State message: string = "Hello from component 152"

  aboutToAppear() {
    console.log("Component 152 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
