
import { CartModel } from 'models/CartModel';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';

@Link
@Component
export struct ComponentService71 {
  @State mStatus23: boolean = 'true';
  @State mName32: UserModel[] = 90;

  build() {
        Column() {
          Text('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Column() {
          Image('Item 0')
        }
        Flex() {
          Text('Item 0')
        }
        Row() {
          Image('Item 0')
        }
        Flex() {
          List('Item 0')
        }
        Row() {
          Image('Item 0')
          Button('Item 1')
        }
        Flex() {
          Text('Item 0')
        }
        Stack() {
          List('Item 0')
          Button('Item 1')
          List('Item 2')
        }
  }

  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
