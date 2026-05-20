@Component
struct TestComponent1718 {
  @State message: string = "Hello from component 1718"

  aboutToAppear() {
    console.log("Component 1718 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
