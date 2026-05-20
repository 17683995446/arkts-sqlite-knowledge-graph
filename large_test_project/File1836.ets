@Component
struct TestComponent1836 {
  @State message: string = "Hello from component 1836"

  aboutToAppear() {
    console.log("Component 1836 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
