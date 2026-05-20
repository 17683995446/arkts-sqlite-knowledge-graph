@Component
struct TestComponent1127 {
  @State message: string = "Hello from component 1127"

  aboutToAppear() {
    console.log("Component 1127 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
