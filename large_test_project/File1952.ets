@Component
struct TestComponent1952 {
  @State message: string = "Hello from component 1952"

  aboutToAppear() {
    console.log("Component 1952 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
