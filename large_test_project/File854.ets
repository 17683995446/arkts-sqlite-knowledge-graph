@Component
struct TestComponent854 {
  @State message: string = "Hello from component 854"

  aboutToAppear() {
    console.log("Component 854 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
