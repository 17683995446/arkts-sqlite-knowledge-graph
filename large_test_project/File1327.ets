@Component
struct TestComponent1327 {
  @State message: string = "Hello from component 1327"

  aboutToAppear() {
    console.log("Component 1327 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
