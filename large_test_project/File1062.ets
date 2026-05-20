@Component
struct TestComponent1062 {
  @State message: string = "Hello from component 1062"

  aboutToAppear() {
    console.log("Component 1062 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
