
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { CartModel } from 'models/CartModel';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.hilog } from '@ohos.hilog';

@StorageLink
@Component
export struct ComponentProvider616 {
  @State mStatus20: number = 5;
  @State mData46: boolean = 'true';
  @State mAge46: number = 29;

  build() {
        Flex() {
          Button('Item 0')
          List('Item 1')
        }
        Column() {
          Image('Item 0')
        }
        Flex() {
          List('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Flex() {
          Button('Item 0')
        }
  }

  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
