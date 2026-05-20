@Component
struct TestComponent1998 {
  @State message: string = "Hello from component 1998"

  aboutToAppear() {
    console.log("Component 1998 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
