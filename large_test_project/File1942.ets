@Component
struct TestComponent1942 {
  @State message: string = "Hello from component 1942"

  aboutToAppear() {
    console.log("Component 1942 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
