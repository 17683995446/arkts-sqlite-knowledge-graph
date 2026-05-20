@Component
struct TestComponent1218 {
  @State message: string = "Hello from component 1218"

  aboutToAppear() {
    console.log("Component 1218 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
