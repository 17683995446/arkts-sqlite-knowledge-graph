@Component
struct TestComponent1225 {
  @State message: string = "Hello from component 1225"

  aboutToAppear() {
    console.log("Component 1225 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
