
import { CartModel } from 'models/CartModel';
import { @ohos.promptAction } from '@ohos.promptAction';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { ObjectUtils } from 'utils/ObjectUtils';
import { Logger } from 'utils/Logger';

@Preview
@Component
export struct ComponentHandler162 {
  @State mData25: number = 38;
  @State mStatus8: string = 'value75';
  @State mStatus29: string = 'value66';
  @State mData30: boolean = 'true';

  build() {
        Flex() {
          Text('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Row() {
          Button('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Flex() {
          Button('Item 0')
        }
        Row() {
          Text('Item 0')
        }
        Stack() {
          TextInput('Item 0')
        }
        Stack() {
          List('Item 0')
          TextInput('Item 1')
        }
  }

  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
