@Component
struct TestComponent1721 {
  @State message: string = "Hello from component 1721"

  aboutToAppear() {
    console.log("Component 1721 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
