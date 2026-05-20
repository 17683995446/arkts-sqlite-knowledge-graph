@Component
struct TestComponent989 {
  @State message: string = "Hello from component 989"

  aboutToAppear() {
    console.log("Component 989 initialized")
  }

  build() {
    Column() {
      Text(this.message)
    }
  }
}
