@Component
struct TestComponent1423 {
  @State message: string = "Hello from component 1423"

  aboutToAppear() {
    console.log("Component 1423 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
