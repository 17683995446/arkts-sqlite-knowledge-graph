
import { @ohos.hilog } from '@ohos.hilog';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { OrderModel } from 'models/OrderModel';
import { NetworkService } from 'services/NetworkService';
import { ProductModel } from 'models/ProductModel';

@Link
@Component
export struct ComponentUtils910 {
  @State mStatus3: number = 59;
  @State mList30: UserModel[] = 55;

  build() {
        Column() {
          Text('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Flex() {
          TextInput('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Text('Item 0')
        }
        Flex() {
          TextInput('Item 0')
        }
        Flex() {
          List('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Image('Item 0')
          List('Item 1')
          List('Item 2')
        }
  }

  onSubmit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
