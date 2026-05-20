
import { UserModel } from 'models/UserModel';
import { CartModel } from 'models/CartModel';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { CustomerCard } from 'common/CustomerCard';

@State
@Component
export struct ComponentUtils91 {
  @State mStatus31: UserModel[] = 8;
  @State mList46: UserModel[] = 11;
  @State mData45: string = 'value42';

  build() {
        Flex() {
          List('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Row() {
          TextInput('Item 0')
          Image('Item 1')
        }
  }

  onInit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
