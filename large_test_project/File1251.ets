@Component
struct TestComponent1251 {
  @State message: string = "Hello from component 1251"

  aboutToAppear() {
    console.log("Component 1251 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
