
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.router } from '@ohos.router';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { OrderModel } from 'models/OrderModel';
import { CartModel } from 'models/CartModel';
import { @ohos.hilog } from '@ohos.hilog';

@Entry
@Component
export struct ComponentConsumer496 {
  @State mName7: UserModel[] = 31;
  @State mName37: UserModel[] = 53;
  @State mList21: boolean = 'true';
  @State mList18: UserModel[] = 85;
  @State mCount35: string = 'value30';

  build() {
        Flex() {
          Image('Item 0')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
        Flex() {
          List('Item 0')
        }
  }

  onLoad6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
