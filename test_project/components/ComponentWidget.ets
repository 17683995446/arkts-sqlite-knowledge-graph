
import { @ohos.promptAction } from '@ohos.promptAction';
import { AuthService } from 'services/AuthService';
import { UserModel } from 'models/UserModel';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@Prop
@Component
export struct ComponentHelper834 {
  @State mData49: string = 'value76';
  @State mList17: number = 88;
  @State mCount11: number = 35;

  build() {
        Stack() {
          Text('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          Image('Item 0')
        }
        Flex() {
          Text('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Stack() {
          Text('Item 0')
        }
        Flex() {
          TextInput('Item 0')
        }
  }

  onClick5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
