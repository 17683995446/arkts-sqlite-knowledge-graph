@Component
struct TestComponent1991 {
  @State message: string = "Hello from component 1991"

  aboutToAppear() {
    console.log("Component 1991 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
